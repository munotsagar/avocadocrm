<?php 
 //WARNING: The contents of this file are auto-generated


 // created: 2018-11-30 13:19:27
$dictionary['fyn_Stock_out']['fields']['fyn_vehicle_id_c']['inline_edit']=1;

 

// created: 2018-11-25 11:53:30
$dictionary["fyn_Stock_out"]["fields"]["fyn_qr_code_boxes_fyn_stock_out_1"] = array (
  'name' => 'fyn_qr_code_boxes_fyn_stock_out_1',
  'type' => 'link',
  'relationship' => 'fyn_qr_code_boxes_fyn_stock_out_1',
  'source' => 'non-db',
  'module' => 'fyn_QR_CODE_BOXES',
  'bean_name' => 'fyn_QR_CODE_BOXES',
  'vname' => 'LBL_FYN_QR_CODE_BOXES_FYN_STOCK_OUT_1_FROM_FYN_QR_CODE_BOXES_TITLE',
  'id_name' => 'fyn_qr_code_boxes_fyn_stock_out_1fyn_qr_code_boxes_ida',
);
$dictionary["fyn_Stock_out"]["fields"]["fyn_qr_code_boxes_fyn_stock_out_1_name"] = array (
  'name' => 'fyn_qr_code_boxes_fyn_stock_out_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_FYN_QR_CODE_BOXES_FYN_STOCK_OUT_1_FROM_FYN_QR_CODE_BOXES_TITLE',
  'save' => true,
  'id_name' => 'fyn_qr_code_boxes_fyn_stock_out_1fyn_qr_code_boxes_ida',
  'link' => 'fyn_qr_code_boxes_fyn_stock_out_1',
  'table' => 'fyn_qr_code_boxes',
  'module' => 'fyn_QR_CODE_BOXES',
  'rname' => 'name',
);
$dictionary["fyn_Stock_out"]["fields"]["fyn_qr_code_boxes_fyn_stock_out_1fyn_qr_code_boxes_ida"] = array (
  'name' => 'fyn_qr_code_boxes_fyn_stock_out_1fyn_qr_code_boxes_ida',
  'type' => 'link',
  'relationship' => 'fyn_qr_code_boxes_fyn_stock_out_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_FYN_QR_CODE_BOXES_FYN_STOCK_OUT_1_FROM_FYN_STOCK_OUT_TITLE',
);


 // created: 2018-12-03 17:59:40
$dictionary['fyn_Stock_out']['fields']['destination_c']['inline_edit']='1';
$dictionary['fyn_Stock_out']['fields']['destination_c']['labelValue']='Destination';

 

 // created: 2018-12-12 18:47:47
$dictionary['fyn_Stock_out']['fields']['quantity']['default']='1';

 

// created: 2018-11-19 23:27:24
$dictionary["fyn_Stock_out"]["fields"]["aos_products_fyn_stock_out_1"] = array (
  'name' => 'aos_products_fyn_stock_out_1',
  'type' => 'link',
  'relationship' => 'aos_products_fyn_stock_out_1',
  'source' => 'non-db',
  'module' => 'AOS_Products',
  'bean_name' => 'AOS_Products',
  'vname' => 'LBL_AOS_PRODUCTS_FYN_STOCK_OUT_1_FROM_AOS_PRODUCTS_TITLE',
  'id_name' => 'aos_products_fyn_stock_out_1aos_products_ida',
);
$dictionary["fyn_Stock_out"]["fields"]["aos_products_fyn_stock_out_1_name"] = array (
  'name' => 'aos_products_fyn_stock_out_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_AOS_PRODUCTS_FYN_STOCK_OUT_1_FROM_AOS_PRODUCTS_TITLE',
  'save' => true,
  'id_name' => 'aos_products_fyn_stock_out_1aos_products_ida',
  'link' => 'aos_products_fyn_stock_out_1',
  'table' => 'aos_products',
  'module' => 'AOS_Products',
  'rname' => 'name',
);
$dictionary["fyn_Stock_out"]["fields"]["aos_products_fyn_stock_out_1aos_products_ida"] = array (
  'name' => 'aos_products_fyn_stock_out_1aos_products_ida',
  'type' => 'link',
  'relationship' => 'aos_products_fyn_stock_out_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_AOS_PRODUCTS_FYN_STOCK_OUT_1_FROM_FYN_STOCK_OUT_TITLE',
);


 // created: 2018-12-01 00:31:55
$dictionary['fyn_Stock_out']['fields']['name']['required']=false;
$dictionary['fyn_Stock_out']['fields']['name']['full_text_search']=array (
);

 

// created: 2018-11-29 19:26:13
$dictionary["fyn_Stock_out"]["fields"]["aos_invoices_fyn_stock_out_1"] = array (
  'name' => 'aos_invoices_fyn_stock_out_1',
  'type' => 'link',
  'relationship' => 'aos_invoices_fyn_stock_out_1',
  'source' => 'non-db',
  'module' => 'AOS_Invoices',
  'bean_name' => 'AOS_Invoices',
  'vname' => 'LBL_AOS_INVOICES_FYN_STOCK_OUT_1_FROM_AOS_INVOICES_TITLE',
  'id_name' => 'aos_invoices_fyn_stock_out_1aos_invoices_ida',
);
$dictionary["fyn_Stock_out"]["fields"]["aos_invoices_fyn_stock_out_1_name"] = array (
  'name' => 'aos_invoices_fyn_stock_out_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_AOS_INVOICES_FYN_STOCK_OUT_1_FROM_AOS_INVOICES_TITLE',
  'save' => true,
  'id_name' => 'aos_invoices_fyn_stock_out_1aos_invoices_ida',
  'link' => 'aos_invoices_fyn_stock_out_1',
  'table' => 'aos_invoices',
  'module' => 'AOS_Invoices',
  'rname' => 'name',
);
$dictionary["fyn_Stock_out"]["fields"]["aos_invoices_fyn_stock_out_1aos_invoices_ida"] = array (
  'name' => 'aos_invoices_fyn_stock_out_1aos_invoices_ida',
  'type' => 'link',
  'relationship' => 'aos_invoices_fyn_stock_out_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_AOS_INVOICES_FYN_STOCK_OUT_1_FROM_FYN_STOCK_OUT_TITLE',
);


 // created: 2018-12-05 00:13:43
$dictionary['fyn_Stock_out']['fields']['do_not_delete_c']['inline_edit']='1';
$dictionary['fyn_Stock_out']['fields']['do_not_delete_c']['labelValue']='do not delete';

 

 // created: 2018-11-30 13:19:27
$dictionary['fyn_Stock_out']['fields']['select_vehicle_c']['inline_edit']='1';
$dictionary['fyn_Stock_out']['fields']['select_vehicle_c']['labelValue']='Select Vehicle';

 
?>