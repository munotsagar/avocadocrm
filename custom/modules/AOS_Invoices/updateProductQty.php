<?php
class UpdateProductQty
{
    public function updateProductQuantityBefore($bean, $event, $arguments)
    {
        if($_POST['module'] == "AOS_Invoices") {
            global $current_user;
            global $db;
            $order_bean = BeanFactory::getBean('AOS_Invoices',$bean->id);
            //print_r($_POST);exit;
            $sql = "SELECT pg.id, CAST(pg.product_qty AS UNSIGNED) as product_qty, pg.product_id as product_id, CAST(pc.balance_c AS UNSIGNED) as balance_c, CAST(pc.invoice_stock_c AS UNSIGNED) as invoice_stock_c FROM aos_products_quotes pg LEFT JOIN aos_products_cstm pc on pg.product_id=pc.id_c LEFT JOIN aos_line_item_groups lig ON pg.group_id = lig.id  WHERE pg.parent_type = 'AOS_Invoices' AND pg.parent_id = '".$bean->id."' AND pg.deleted = 0 ORDER BY lig.number ASC, pg.number ASC";

            $fp = fopen("updateProductQuantityBefore.txt", "a");
            fwrite($fp, $sql."\n\n\n");
            $result = $db->query($sql);
            while ($row = $db->fetchByAssoc($result)) {
                $balance = (int)$row['balance_c'] + (int)$row['product_qty'];
                $invoice_stock_c = (int)$row['invoice_stock_c'] - (int)$row['product_qty'];
                $updateProductQty = "update aos_products_cstm set balance_c = '".$balance."', invoice_stock_c = '".$invoice_stock_c."' where id_c = '".$row['product_id']."'";
                fwrite($fp, $updateProductQty."\n\n\n");
                $db->query($updateProductQty);
            }
            fclose($fp);
        }
        

        //echo "<br>";echo "<br>";echo "<br>";echo "<br>";echo "<br>";echo "<br>";
    }

    public function updateProductQuantityAfter($bean, $event, $arguments)
    {
        if($_POST['module'] == "AOS_Invoices") {
            global $current_user;
            global $db;
            $order_bean = BeanFactory::getBean('AOS_Invoices',$bean->id);
            //echo "<br>";
            $sql = "SELECT pg.id, CAST(pg.product_qty AS UNSIGNED) as product_qty, pg.product_id as product_id, CAST(pc.balance_c AS UNSIGNED) as balance_c, CAST(pc.invoice_stock_c AS UNSIGNED) as invoice_stock_c FROM aos_products_quotes pg INNER JOIN aos_products_cstm pc on pg.product_id=pc.id_c LEFT JOIN aos_line_item_groups lig ON pg.group_id = lig.id  WHERE pg.parent_type = 'AOS_Invoices' AND pg.parent_id = '".$bean->id."' AND pg.deleted = 0 ORDER BY lig.number ASC, pg.number ASC";
            //echo $sql; exit;
            $fp = fopen("updateProductQuantityAfter.txt", "a");
            fwrite($fp, $sql."\n\n\n");
            

            $result = $db->query($sql);
            while ($row = $db->fetchByAssoc($result)) {
                $key = array_search($row['product_id'], $_POST['product_product_id']);
                $newProdQty = $_POST['product_product_qty'][$key];
                //echo $newProdQty;//exit;
                $balance = (int)$row['balance_c'] - (int)$newProdQty;
                $invoice_stock_c = (int)$row['invoice_stock_c'] + (int)$row['product_qty'];
                $updateProductQty = "update aos_products_cstm set balance_c = '".$balance."', invoice_stock_c = '".$invoice_stock_c."' where id_c = '".$row['product_id']."'";
                //echo $updateProductQty;echo "<br>";//exit;
                fwrite($fp, $updateProductQty."\n\n\n".$newProdQty."\n\n\n");
                $db->query($updateProductQty);
            }

            fclose($fp);
        //exit;
        }
    }
}

?>