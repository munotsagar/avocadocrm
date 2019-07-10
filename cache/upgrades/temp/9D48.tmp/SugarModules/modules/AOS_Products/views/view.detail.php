<?php
if (!defined('sugarEntry') || !sugarEntry) {
    die('Not A Valid Entry Point');
}

require_once('include/MVC/View/views/view.detail.php');

class AOS_ProductsViewDetail extends ViewDetail
{
    public $vehicleData = [];
    public function __construct()
    {
        parent::__construct();
    }

    /*public function preDisplay()
    {
        global $db;
        //echo "select balance_c from aos_products_cstm where id_c='".$this->bean->id."'";
        $resp = $db->query("select balance_c from aos_products_cstm  where id_c='".$this->bean->id."'");
        $rowsp = $db->fetchByAssoc($resp);
        print_r($rowsp);
        echo $rowsp['balance_c'];//exit;
    }*/
    public function display()
    {    
        global $db;    
        //echo $this->bean->balance_c;exit;
        
        $fromDestinationOptions = $this->getDestinatioOptions();
        $toDestinationOptions = $this->getDestinatioOptions();
        //print_r($destinationOptions);exit;
        $vehicleOptions = $this->getVehicleNameOptions();

        $productVehicleStockList = $this->getProductVehicleStock($this->bean->id);

        if($this->vehicleData)
        {
            foreach($this->vehicleData as $key => $value)
            {
                ?>
            <input type="hidden" id="<?php echo $key;?>" value="<?php echo $value;?>">

            <?php
            }
            ?>
            <input type="hidden" id="product_balance_c" value="<?php echo $this->bean->balance_c;?>">
            <input type="hidden" id="product_disposable_c" value="<?php echo $this->bean->disposable_c;?>">
            <input type="hidden" id="product_defect_c" value="<?php echo $this->bean->defect_c;?>">
            <input type="hidden" id="product_reserve_c" value="<?php echo $this->bean->reserve_c;?>">
            <?php

        }

        //$hiddenSelectVehicle = 
        $productBean = BeanFactory::getBean('AOS_Products', $this->bean->id);
        //$productBean->balance_c = $productBean->balance_c-$row['product_qty'];
        //$productBean->save();
        
        
        //print_r($no_of_record);exit;
        
        parent::display();
        ?>
        <style>

            #add-product table{width:100%;background-color:#F0F0F0;}
            #add-product table th{text-align:left;}
            #add-product table td{background-color:#FFFFFF;border-bottom:#F0F0F0 1px solid;text-align:left;word-break: break-all;max-width: 10px;vertical-align: top;}
            #list-product table{width:100%;}
            #list-product table th{border-bottom:#F0F0F0 2px solid;text-align:left;}
            #list-product table td{border-bottom:#F0F0F0 1px solid;text-align:left;word-break: break-all;vertical-align: top;}
            #btnSaveAction {
                background-color: #7fb378;
                padding: 5px 10px;
                color: #fff;
                border-radius: 4px;
                cursor:pointer;
                margin:10px 0px 40px;
                display:inline-block;
            }

            .txt-heading{    
                padding: 10px 10px;
                border-radius: 2px;
                color: #333;
                background: #d1e6d6;
                margin:20px 0px 5px;
            }
</style>
<script lang="javascript" src="/modules/AOS_Products/js/jquery-1.10.2.js"></script>
        <script lang="javascript">
        $(document).ready(function() {
            //$(".panel-content .panel-body").append($("#addTransfer").html());
            
            $("#fromStock").on('change', function(){

                $("#currentStock").val($("#"+this.value).val());

                /*$.ajax({
                    url: 'http://api.joind.in/v2.1/talks/10889',
                    data: {
                    format: 'json'
                    },
                    error: function() {
                    $('#info').html('<p>An error has occurred</p>');
                    },
                    dataType: 'jsonp',
                    success: function(data) {
                    var $title = $('<h1>').text(data.talks[0].talk_title);
                    var $description = $('<p>').text(data.talks[0].talk_description);
                    $('#info')
                    .append($title)
                    .append($description);
                    },
                    type: 'GET'
                });*/
            });

            $("#toStock").on('change', function(){
                //alert("I am Here");
                $("#toStockHidden").val($("#"+this.value).val());
            });

            $("#transfersubmit").on('click', function() {

                var currentStock = parseInt($("#currentStock").val());
                var transferStock = parseInt($("#transferStock").val());

                if($("#fromStock").val()==""){
                    alert("Please select From Location!");
                    return false;
                }
                if($("#toStock").val()==""){
                    alert("Please select To Location!");
                    return false;
                }
                if(currentStock<=0){
                    alert("Current Stock should be greater than 0!");
                    return false;
                }
                if(transferStock<=0){
                    alert("Trans Stock should be greater than 0!");
                    return false;
                }
                if(transferStock > currentStock){
                    //alert(transferStock);
                    //alert(currentStock);
                    alert("Current Stock should be Greater Than Transfered Stock..");
                    return false;
                }
                $.ajax({
                    url: 'index.php?entryPoint=transferInventory',
                    data: $('#frmAddTransfer').serialize(),
                    type: 'POST',
                    error: function() {
                        alert("Add Transfer Inventory Failed.. ")
                    },
                    success: function(data) {
                    alert("Transfer Inventory Added Successfully...");
                    location.reload();
                    }
                });
                //$("#frmAddTransfer").submit();
            });
        });
        
        </script>
        
        <div id="addTransfer" >
        <div>
            <div class="txt-heading">Inventory Between Locations</div>
        <!-- <div id = "addTransfer">
            <h3>Inventory Between Locations : </h3> -->
            
            <?php
                echo $productVehicleStockList;
                ?><br><br>
        	<form name="frmAddTransfer" id = "frmAddTransfer" method="POST">
            <div class="txt-heading">Transfer Inventory Between Locations</div>
        		<table  cellspacing="5" cellpadding = "5" width="100%">
                <tr>
                    <th><strong>From</strong></th>
                    <th><strong>To</strong></th>
                    <th><strong>Current Stock</strong></th>
                    <th><strong>Transfer Stock</strong></th>
                    <th></th>
			    </tr>
        			<td >
                        <select name="fromStock" id="fromStock"style="width:140px;">
                        <option value="">Select Vehicle</option>
                            <?php echo $vehicleOptions;?>
                            <option value="product_balance_c">Warehouse Balance Stock</option>
                            <option value="product_disposable_c">Disposable</option>
                            <option value="product_defect_c">Defect</option>
                            <option value="product_reserve_c">Reserve</option>
                    </select></td>
        			<td>
                        <select name="toStock" id="toStock" style="width:140px;"><option value="">Select Vehicle</option>
                            <?php echo $vehicleOptions;?>
                            <option value="product_balance_c">Warehouse Balance Stock</option>
                            <option value="product_disposable_c">Disposable</option>
                            <option value="product_defect_c">Defect</option>
                            <option value="product_reserve_c">Reserve</option>
                        </select>
                    </td>        			
        			<td><input size ="4" type="text" id = "currentStock" name = "currentStock" value="" readonly></td>
        			<td><input size ="4" type="text" id = "transferStock" name = "transferStock" value=""></td>
        			<td><input type="button" id="transfersubmit" name="transfersubmit" value="Submit"></td>
                </table>
                <input type="hidden" name="productId" id="productId" value="<?php echo $this->bean->id;?>">
                <input type="hidden" name = "toStockHidden" id = "toStockHidden" value="">
                <!-- <div id="btnSaveAction">Save Transfer</div> -->
        	</form>	
        </div>
        <div id="list-product">
<div class="txt-heading">History Transfer Inventory Between Locations</div>
	<table cellpadding="10" cellspacing="1">
		<tbody id="ajax-response">
        <tr>
            <th><strong>From</strong></th>
            <th><strong>To</strong></th>
            <th><strong>Current Stock</strong></th>
            <th><strong>Transfer Stock</strong></th>
            <th>Transfered Date</th>
        </tr>

        <?php
            $sqlHistory = "select * from transfer_inventory_products where product_id = '".$this->bean->id."'";

            $resHistory = $db->query($sqlHistory);

            if($resHistory->num_rows > 0){
                while($rowHistory = $db->fetchByAssoc($resHistory))
                {
                    ?>
                <tr>
                    <td nowrap="nowrap"><?php echo $rowHistory['fromStock'];?></td>
                    <td nowrap="nowrap"><?php echo $rowHistory['toStock'];?></td>
                    <td nowrap="nowrap"><?php echo $rowHistory['currentStock'];?></td>
                    <td nowrap="nowrap"><?php echo $rowHistory['transferStock'];?></td>
                    <td><?php echo date("d-m-Y H:m:s",$rowHistory['transferDate']);?></td>
                </tr>
                    <?php
                }
            }
        ?>
                
			
		</tbody>
	</table>
</div>
        </div>



        <?php 
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
                    $this->vehicleData[$rows['vehicleId']] = $rows['productVehicleStock'];
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
