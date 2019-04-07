<?php 
 //WARNING: The contents of this file are auto-generated


 // created: 2018-12-03 13:17:51
$dictionary['vs_vehiclestockOUT']['fields']['fyn_vehicle_id_c']['inline_edit']=1;

 

// created: 2018-11-30 17:28:41
$dictionary["vs_vehiclestockOUT"]["fields"]["fyn_vehicle_vs_vehiclestockout_1"] = array (
  'name' => 'fyn_vehicle_vs_vehiclestockout_1',
  'type' => 'link',
  'relationship' => 'fyn_vehicle_vs_vehiclestockout_1',
  'source' => 'non-db',
  'module' => 'fyn_Vehicle',
  'bean_name' => 'fyn_Vehicle',
  'vname' => 'LBL_FYN_VEHICLE_VS_VEHICLESTOCKOUT_1_FROM_FYN_VEHICLE_TITLE',
  'id_name' => 'fyn_vehicle_vs_vehiclestockout_1fyn_vehicle_ida',
);
$dictionary["vs_vehiclestockOUT"]["fields"]["fyn_vehicle_vs_vehiclestockout_1_name"] = array (
  'name' => 'fyn_vehicle_vs_vehiclestockout_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_FYN_VEHICLE_VS_VEHICLESTOCKOUT_1_FROM_FYN_VEHICLE_TITLE',
  'save' => true,
  'id_name' => 'fyn_vehicle_vs_vehiclestockout_1fyn_vehicle_ida',
  'link' => 'fyn_vehicle_vs_vehiclestockout_1',
  'table' => 'fyn_vehicle',
  'module' => 'fyn_Vehicle',
  'rname' => 'name',
);
$dictionary["vs_vehiclestockOUT"]["fields"]["fyn_vehicle_vs_vehiclestockout_1fyn_vehicle_ida"] = array (
  'name' => 'fyn_vehicle_vs_vehiclestockout_1fyn_vehicle_ida',
  'type' => 'link',
  'relationship' => 'fyn_vehicle_vs_vehiclestockout_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_FYN_VEHICLE_VS_VEHICLESTOCKOUT_1_FROM_VS_VEHICLESTOCKOUT_TITLE',
);


// created: 2018-12-03 17:25:55
$dictionary["vs_vehiclestockOUT"]["fields"]["aos_invoices_vs_vehiclestockout_1"] = array (
  'name' => 'aos_invoices_vs_vehiclestockout_1',
  'type' => 'link',
  'relationship' => 'aos_invoices_vs_vehiclestockout_1',
  'source' => 'non-db',
  'module' => 'AOS_Invoices',
  'bean_name' => 'AOS_Invoices',
  'vname' => 'LBL_AOS_INVOICES_VS_VEHICLESTOCKOUT_1_FROM_AOS_INVOICES_TITLE',
  'id_name' => 'aos_invoices_vs_vehiclestockout_1aos_invoices_ida',
);
$dictionary["vs_vehiclestockOUT"]["fields"]["aos_invoices_vs_vehiclestockout_1_name"] = array (
  'name' => 'aos_invoices_vs_vehiclestockout_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_AOS_INVOICES_VS_VEHICLESTOCKOUT_1_FROM_AOS_INVOICES_TITLE',
  'save' => true,
  'id_name' => 'aos_invoices_vs_vehiclestockout_1aos_invoices_ida',
  'link' => 'aos_invoices_vs_vehiclestockout_1',
  'table' => 'aos_invoices',
  'module' => 'AOS_Invoices',
  'rname' => 'name',
);
$dictionary["vs_vehiclestockOUT"]["fields"]["aos_invoices_vs_vehiclestockout_1aos_invoices_ida"] = array (
  'name' => 'aos_invoices_vs_vehiclestockout_1aos_invoices_ida',
  'type' => 'link',
  'relationship' => 'aos_invoices_vs_vehiclestockout_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_AOS_INVOICES_VS_VEHICLESTOCKOUT_1_FROM_VS_VEHICLESTOCKOUT_TITLE',
);


 // created: 2018-12-03 17:51:02

 

// created: 2018-11-30 21:04:02
$dictionary["vs_vehiclestockOUT"]["fields"]["aos_products_vs_vehiclestockout_1"] = array (
  'name' => 'aos_products_vs_vehiclestockout_1',
  'type' => 'link',
  'relationship' => 'aos_products_vs_vehiclestockout_1',
  'source' => 'non-db',
  'module' => 'AOS_Products',
  'bean_name' => 'AOS_Products',
  'vname' => 'LBL_AOS_PRODUCTS_VS_VEHICLESTOCKOUT_1_FROM_AOS_PRODUCTS_TITLE',
  'id_name' => 'aos_products_vs_vehiclestockout_1aos_products_ida',
);
$dictionary["vs_vehiclestockOUT"]["fields"]["aos_products_vs_vehiclestockout_1_name"] = array (
  'name' => 'aos_products_vs_vehiclestockout_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_AOS_PRODUCTS_VS_VEHICLESTOCKOUT_1_FROM_AOS_PRODUCTS_TITLE',
  'save' => true,
  'id_name' => 'aos_products_vs_vehiclestockout_1aos_products_ida',
  'link' => 'aos_products_vs_vehiclestockout_1',
  'table' => 'aos_products',
  'module' => 'AOS_Products',
  'rname' => 'name',
);
$dictionary["vs_vehiclestockOUT"]["fields"]["aos_products_vs_vehiclestockout_1aos_products_ida"] = array (
  'name' => 'aos_products_vs_vehiclestockout_1aos_products_ida',
  'type' => 'link',
  'relationship' => 'aos_products_vs_vehiclestockout_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_AOS_PRODUCTS_VS_VEHICLESTOCKOUT_1_FROM_VS_VEHICLESTOCKOUT_TITLE',
);


 // created: 2018-11-30 19:25:44
$dictionary['vs_vehiclestockOUT']['fields']['do_not_delete_c']['inline_edit']='1';
$dictionary['vs_vehiclestockOUT']['fields']['do_not_delete_c']['labelValue']='do not delete';

 

// created: 2018-12-03 17:45:45
$dictionary["vs_vehiclestockOUT"]["fields"]["fyn_qr_code_boxes_vs_vehiclestockout_1"] = array (
  'name' => 'fyn_qr_code_boxes_vs_vehiclestockout_1',
  'type' => 'link',
  'relationship' => 'fyn_qr_code_boxes_vs_vehiclestockout_1',
  'source' => 'non-db',
  'module' => 'fyn_QR_CODE_BOXES',
  'bean_name' => 'fyn_QR_CODE_BOXES',
  'vname' => 'LBL_FYN_QR_CODE_BOXES_VS_VEHICLESTOCKOUT_1_FROM_FYN_QR_CODE_BOXES_TITLE',
  'id_name' => 'fyn_qr_code_boxes_vs_vehiclestockout_1fyn_qr_code_boxes_ida',
);
$dictionary["vs_vehiclestockOUT"]["fields"]["fyn_qr_code_boxes_vs_vehiclestockout_1_name"] = array (
  'name' => 'fyn_qr_code_boxes_vs_vehiclestockout_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_FYN_QR_CODE_BOXES_VS_VEHICLESTOCKOUT_1_FROM_FYN_QR_CODE_BOXES_TITLE',
  'save' => true,
  'id_name' => 'fyn_qr_code_boxes_vs_vehiclestockout_1fyn_qr_code_boxes_ida',
  'link' => 'fyn_qr_code_boxes_vs_vehiclestockout_1',
  'table' => 'fyn_qr_code_boxes',
  'module' => 'fyn_QR_CODE_BOXES',
  'rname' => 'name',
);
$dictionary["vs_vehiclestockOUT"]["fields"]["fyn_qr_code_boxes_vs_vehiclestockout_1fyn_qr_code_boxes_ida"] = array (
  'name' => 'fyn_qr_code_boxes_vs_vehiclestockout_1fyn_qr_code_boxes_ida',
  'type' => 'link',
  'relationship' => 'fyn_qr_code_boxes_vs_vehiclestockout_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_FYN_QR_CODE_BOXES_VS_VEHICLESTOCKOUT_1_FROM_VS_VEHICLESTOCKOUT_TITLE',
);


 // created: 2018-12-03 13:19:21

 

 // created: 2018-12-03 13:17:51
$dictionary['vs_vehiclestockOUT']['fields']['to_vehicle_c']['inline_edit']='1';
$dictionary['vs_vehiclestockOUT']['fields']['to_vehicle_c']['labelValue']='To Vehicle';

 
?>