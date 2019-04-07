<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2018-11-30 21:03:49
$dictionary["vs_Vehicle_StockIN"]["fields"]["aos_products_vs_vehicle_stockin_1"] = array (
  'name' => 'aos_products_vs_vehicle_stockin_1',
  'type' => 'link',
  'relationship' => 'aos_products_vs_vehicle_stockin_1',
  'source' => 'non-db',
  'module' => 'AOS_Products',
  'bean_name' => 'AOS_Products',
  'vname' => 'LBL_AOS_PRODUCTS_VS_VEHICLE_STOCKIN_1_FROM_AOS_PRODUCTS_TITLE',
  'id_name' => 'aos_products_vs_vehicle_stockin_1aos_products_ida',
);
$dictionary["vs_Vehicle_StockIN"]["fields"]["aos_products_vs_vehicle_stockin_1_name"] = array (
  'name' => 'aos_products_vs_vehicle_stockin_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_AOS_PRODUCTS_VS_VEHICLE_STOCKIN_1_FROM_AOS_PRODUCTS_TITLE',
  'save' => true,
  'id_name' => 'aos_products_vs_vehicle_stockin_1aos_products_ida',
  'link' => 'aos_products_vs_vehicle_stockin_1',
  'table' => 'aos_products',
  'module' => 'AOS_Products',
  'rname' => 'name',
);
$dictionary["vs_Vehicle_StockIN"]["fields"]["aos_products_vs_vehicle_stockin_1aos_products_ida"] = array (
  'name' => 'aos_products_vs_vehicle_stockin_1aos_products_ida',
  'type' => 'link',
  'relationship' => 'aos_products_vs_vehicle_stockin_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_AOS_PRODUCTS_VS_VEHICLE_STOCKIN_1_FROM_VS_VEHICLE_STOCKIN_TITLE',
);


 // created: 2018-12-03 18:12:43
$dictionary['vs_Vehicle_StockIN']['fields']['fyn_vehicle_id_c']['inline_edit']=1;

 

 // created: 2018-12-03 17:50:16

 

// created: 2018-11-30 17:27:30
$dictionary["vs_Vehicle_StockIN"]["fields"]["fyn_vehicle_vs_vehicle_stockin_1"] = array (
  'name' => 'fyn_vehicle_vs_vehicle_stockin_1',
  'type' => 'link',
  'relationship' => 'fyn_vehicle_vs_vehicle_stockin_1',
  'source' => 'non-db',
  'module' => 'fyn_Vehicle',
  'bean_name' => 'fyn_Vehicle',
  'vname' => 'LBL_FYN_VEHICLE_VS_VEHICLE_STOCKIN_1_FROM_FYN_VEHICLE_TITLE',
  'id_name' => 'fyn_vehicle_vs_vehicle_stockin_1fyn_vehicle_ida',
);
$dictionary["vs_Vehicle_StockIN"]["fields"]["fyn_vehicle_vs_vehicle_stockin_1_name"] = array (
  'name' => 'fyn_vehicle_vs_vehicle_stockin_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_FYN_VEHICLE_VS_VEHICLE_STOCKIN_1_FROM_FYN_VEHICLE_TITLE',
  'save' => true,
  'id_name' => 'fyn_vehicle_vs_vehicle_stockin_1fyn_vehicle_ida',
  'link' => 'fyn_vehicle_vs_vehicle_stockin_1',
  'table' => 'fyn_vehicle',
  'module' => 'fyn_Vehicle',
  'rname' => 'name',
);
$dictionary["vs_Vehicle_StockIN"]["fields"]["fyn_vehicle_vs_vehicle_stockin_1fyn_vehicle_ida"] = array (
  'name' => 'fyn_vehicle_vs_vehicle_stockin_1fyn_vehicle_ida',
  'type' => 'link',
  'relationship' => 'fyn_vehicle_vs_vehicle_stockin_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_FYN_VEHICLE_VS_VEHICLE_STOCKIN_1_FROM_VS_VEHICLE_STOCKIN_TITLE',
);


 // created: 2018-11-30 19:25:29
$dictionary['vs_Vehicle_StockIN']['fields']['do_not_delete_c']['inline_edit']='1';
$dictionary['vs_Vehicle_StockIN']['fields']['do_not_delete_c']['labelValue']='do not delete';

 

 // created: 2018-12-03 18:16:46
$dictionary['vs_Vehicle_StockIN']['fields']['to_vehicle_c']['inline_edit']='1';
$dictionary['vs_Vehicle_StockIN']['fields']['to_vehicle_c']['labelValue']='From Vehicle';

 

 // created: 2018-12-03 18:15:43

 
?>