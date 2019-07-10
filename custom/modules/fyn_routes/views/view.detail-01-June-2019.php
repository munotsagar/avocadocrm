<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
 
error_reporting(E_ALL);
ini_set('display_errors', 1);

require_once('include/MVC/View/views/view.detail.php');
class fyn_routesViewDetail extends ViewDetail 
{

    function display()
    {
      global $app_list_strings;
      global $db;
      global $sugar_config;
      
      $orders = $this->bean->get_linked_beans('fyn_routes_aos_invoices_1','fyn_routes');
      $addresses=array();
      $i=0;
      foreach ($orders as $order) 
      {
        // $addresses[$i]=$order->formatted_address_c;
        $i++;
      }

      // // echo "shafiq <pre> addresses are:".$i;print_r($addresses);exit;
      // $addr="";
      // for($j=0;$j<$i;$j++)
      // {
      //   $addr.="w".$j."=".$addresses[$j];
      // }
      // $finaladdr=urlencode($addr);
      // // echo "shafiq <pre>";print_r($finaladdr);exit;
      $url="popup.php?"."&beanid=".$this->bean->id."&count=".$i;
  
      ?>
      
      <a style="position:absolute;margin-top: 4.1%;margin-left: 17.5%;" href="<?php echo $url; ?>" target="_blank" class="btn btn-default">Gen Route</a>
      
      <?php

      parent::display();
      ?>
      <input type="button" name="select" value="Select" onclick="window.open('<?php echo $sugar_config['site_url'];?>/index.php?module=AOS_Invoices&action=invoices&route=<?php echo $this->bean->id;?>','Invoice List','height=800,width=850');">
        
        <?php
            $vehicleOptions = $this->getVehicleNameOptions();
        ?>
        <select name="fromStock" id="fromStock"style="width:140px;">
                        <option value="">Select Vehicle</option>
                            <?php echo $vehicleOptions;?>
                            <!-- <option value="product_balance_c">Warehouse Balance Stock</option>
                            <option value="product_disposable_c">Disposable</option>
                            <option value="product_defect_c">Defect</option>
                            <option value="product_reserve_c">Reserve</option> -->
                    </select>
      <script>
      $(document).ready(function(){
        //alert("I am Here...");
        var selectLink = $("#fyn_routes_aos_invoices_1_select_button_old").attr('onClick');
        console.log(selectLink);
        $("#subpanel_list").hide();

        $("#fromStock").on("change", function(){
          $("#van").val(this.value);
          var flag = 0;
          $('input[type="checkbox"]:checked').each(function(index, elem) {
            //alert($(elem).val());
            flag = 1;
          });
          if(flag == 0) {
            alert("Please select Invoice to assign Driver..");
            this.value = "";
            return false;
          }

          $('#frmSaveInvoiceRoutevan').submit();

          /*$.ajax({
                    url: 'index.php?entryPoint=saveInvoiceRoutevan',
                    data: $('#frmSaveInvoiceRoutevan').serialize(),
                    type: 'POST',
                    error: function() {
                        alert("Add Transfer Inventory Failed.. ")
                    },
                    success: function(data) {
                    alert("Transfer Inventory Added Successfully...");
                    location.reload();
                    }
                });*/

        })
        
      });
    </script>
    <?php
      $sql = "select 
                    aos_invoices.id as id,
                    aos_invoices.name as name,
                    aos_invoices.number as number,
                    aos_invoices.billing_account_id as billing_account_id,
                    aos_invoices.total_amount as total_amount,
                    aos_invoices.status as status,
                    aos_invoices.date_entered as date_entered,
                    aos_invoices.description as description,
                    aos_invoices.created_by as created_by,
                    aos_invoices_cstm.approval_status_c as approval_status_c,
                    fyn_vehicle.name as driver_name
                    
      from aos_invoices 
          inner join aos_invoices_cstm on aos_invoices.id = aos_invoices_cstm.id_c 
          inner join fyn_routes_aos_invoices_1_c on aos_invoices.id = fyn_routes_aos_invoices_1_c.fyn_routes_aos_invoices_1aos_invoices_idb
          inner join fyn_routes on fyn_routes.id = fyn_routes_aos_invoices_1_c.fyn_routes_aos_invoices_1fyn_routes_ida
          Left join route_invoice_van on route_invoice_van.route = fyn_routes.id and route_invoice_van.invoice = aos_invoices.id
          Left join fyn_vehicle on fyn_vehicle.id = route_invoice_van.van
      where 
          aos_invoices.deleted = '0'
          and fyn_routes.id = '".$this->bean->id."'
          and fyn_routes_aos_invoices_1_c.deleted = '0'
          and approval_status_c = 'OnVehicle'";

      $res = $db->query($sql);
      $numRows = $res->num_rows;
      ?>
      <form name="frmSaveInvoiceRoutevan" id="frmSaveInvoiceRoutevan" method="POST" action="index.php?entryPoint=saveInvoiceRoutevan">
      <table class="table">
                <thead>
                    <tr>
                        <th>Select</th>
                        <th>invoice #</th>
                        <th>Customer</th>
                        <th>Customer Address</th>
                        <th>Payment Status</th>
                        <th>Grand Total</th>
                        <th>Date Created</th>
                        <th>Driver Name</th>
                        <th>Order Status</th>
                        <th>Description</th>
                        <th>Created By</th>
                        <th>Routing Date</th>
                    </tr>
                </thead>
            <?php
            if($numRows > 0) {
                ?>
                <tbody>
                    <?php
                while($row = $db->fetchByAssoc($res)) {
                    ?>
                    <tr>
                        <td><input type="checkbox" name="selectInvoice[]" value="<?php echo $row['id'];?>"></td>
                        <td><?php echo $row['number'];?></td>
                        <td><?php
                            $getAccountBeans =  BeanFactory::getBean("Accounts", $row['billing_account_id']);
                            echo $getAccountBeans->name;
                        ?></td>
                        <td><?php
                            echo $getAccountBeans->billing_address_street. ", ". $getAccountBeans->billing_address_city. ", ". $getAccountBeans->billing_address_state. ", ". $getAccountBeans->billing_address_postalcode. ", ". $getAccountBeans->billing_address_country;
                        ?></td>
                        <td><?php echo $row['status'];?></td>
                        <td><?php echo number_format((float)$row['total_amount'], 2, '.', '');;?></td>
                        <td><?php echo $row['date_entered'];?></td>
                        <td><?php echo $row['driver_name'];?></td>
                        <td><?php echo $row['approval_status_c'];?></td>
                        <td><?php echo $row['description'];?></td>
                        <td><?php 
                                  $getUserBeans =  BeanFactory::getBean("Users", $row['created_by']);
                                  echo $getUserBeans->name;
                        ?></td>
                        <td><?php echo $this->bean->date_entered;?></td>
                    </tr>
                    <?php
                }
                ?>
                </tbody>
            </table>
            <input type="hidden" name="route" value="<?php echo $this->bean->id;?>">
            <input type="hidden" name="van" id="van" value="">
      </form>
      <?php
    }
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
  }
?>
