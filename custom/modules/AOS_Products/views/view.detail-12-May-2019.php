<?php
if (!defined('sugarEntry') || !sugarEntry) {
    die('Not A Valid Entry Point');
}

require_once('include/MVC/View/views/view.detail.php');

class AOS_ProductsViewDetail extends ViewDetail
{
    public function __construct()
    {
        parent::__construct();
    }


    public function display()
    {
        //global $db;
        //echo $this->bean->balance_c;exit;
        $fromDestinationOptions = $this->getDestinatioOptions();
        $toDestinationOptions = $this->getDestinatioOptions();
        //print_r($destinationOptions);exit;
        $vehicleOptions = $this->getVehicleNameOptions();

        $productVehicleStockList = $this->getProductVehicleStock($this->bean->id);

        
        //print_r($no_of_record);exit;
        ?>
        <script>
        $(document).ready(function() {
			$(".panel-content div").html($("#addTransfer").html());
		});
        </script>
        <div id = "addTransfer" style="display: none;">
            <h3>Inventory Between Locations : </h3>
            
            <?php
                echo $productVehicleStockList;
                ?>
        	<form name="frmAddTransfer" method="POST">
        		<table cellspacing="5" cellpadding = "5" width="100%">
        			<td>Vehicle : </td>
        			<td ><select name="vehicle" style="width:140px;"><option value="">Select Vehicle</option><?php echo $vehicleOptions;?></select></td>
        			<td>From :</td>
        			<td><select name = "fromDestination"><option value="">Select From</option><?php echo $fromDestinationOptions;?></select></td>
        			<td>To :</td>
        			<td><select name = "toDestination"><option value="">Select To</option><?php echo $toDestinationOptions;?></select></td>
        			<td>Current Stock</td>
        			<td><input size ="4" type="text" name = "currentStock" value=""></td>
        			<td>Transfer Stock</td>
        			<td><input size ="4" type="text" name = "transferStock" value=""></td>
        			<td><input type="submit" name="transfersubmit" value="Submit"></td>
        		</table>
        	</form>	
        </div>
        <?php 
        parent::display();
    }

    public function getProductVehicleStock($pid)
    {
        global $db;
        
        /*echo "select fyn_vehicle.id as vehicleId, fyn_vehicle.name as vehicleName, prove_product_vehicle_stock_cstm.vehicle_stock_c as productVehicleStock from prove_product_vehicle_stock 
        inner join prove_product_vehicle_stock_cstm on prove_product_vehicle_stock.id = prove_product_vehicle_stock_cstm.id_c 
        inner join fyn_vehicle on fyn_vehicle.id = prove_product_vehicle_stock_cstm.fyn_vehicle_id_c 
        inner join aos_products on aos_products.id = prove_product_vehicle_stock_cstm.aos_products_id_c
        where aos_products.id='".$pid."'";*/
        $res = $db->query("select fyn_vehicle.id as vehicleId, fyn_vehicle.name as vehicleName, prove_product_vehicle_stock_cstm.vehicle_stock_c as productVehicleStock from prove_product_vehicle_stock 
        inner join prove_product_vehicle_stock_cstm on prove_product_vehicle_stock.id = prove_product_vehicle_stock_cstm.id_c 
        inner join fyn_vehicle on fyn_vehicle.id = prove_product_vehicle_stock_cstm.fyn_vehicle_id_c 
        inner join aos_products on aos_products.id = prove_product_vehicle_stock_cstm.aos_products_id_c
        where aos_products.id='".$pid."'");
        $no_of_record = $res->num_rows;
        //echo $no_of_record;//exit;
        //$r = $res->fetch_assoc(); 
        //print_r($r);exit;
        $vehicleData = "<table border='0' width='60%'>";
        if($no_of_record > 0)
            {
                while($rows = $db->fetchByAssoc($res))
                {
                    
                    $vehicleData.="<tr><td>". $rows['vehicleName']."</td><td> : </td><td>". $rows['productVehicleStock']."</td></tr>";

                }
            }
            $vehicleData.="</table>";
        return $vehicleData;
    }
    
    public function getVehicleNameOptions() {
        
                $vehicleBean = BeanFactory::getBean('fyn_Vehicle');
                $beanList = $vehicleBean->get_list("name");
        $vehicleOptions = "";
        foreach ($beanList['list'] as $vehicle) {
            $vehicleOptions.= "<option value='".$vehicle->id."'>".$vehicle->name."</option>";
        }
        
        return $vehicleOptions;
    }

    public function getDestinatioOptions() {
        global $app_list_strings;
        $destination = $app_list_strings['destination_new_list'];
        $destinationOptions = "";
        foreach ($destination as $key=>$value) {            
            $destinationOptions.= "<option value='".$key."'>".$value."</option>";
        }
        return $destinationOptions;
    }
}
