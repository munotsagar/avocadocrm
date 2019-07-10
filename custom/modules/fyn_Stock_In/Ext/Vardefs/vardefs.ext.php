<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2018-11-25 11:54:47
$dictionary["fyn_Stock_In"]["fields"]["fyn_qr_code_boxes_fyn_stock_in_1"] = array (
  'name' => 'fyn_qr_code_boxes_fyn_stock_in_1',
  'type' => 'link',
  'relationship' => 'fyn_qr_code_boxes_fyn_stock_in_1',
  'source' => 'non-db',
  'module' => 'fyn_QR_CODE_BOXES',
  'bean_name' => 'fyn_QR_CODE_BOXES',
  'vname' => 'LBL_FYN_QR_CODE_BOXES_FYN_STOCK_IN_1_FROM_FYN_QR_CODE_BOXES_TITLE',
  'id_name' => 'fyn_qr_code_boxes_fyn_stock_in_1fyn_qr_code_boxes_ida',
);
$dictionary["fyn_Stock_In"]["fields"]["fyn_qr_code_boxes_fyn_stock_in_1_name"] = array (
  'name' => 'fyn_qr_code_boxes_fyn_stock_in_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_FYN_QR_CODE_BOXES_FYN_STOCK_IN_1_FROM_FYN_QR_CODE_BOXES_TITLE',
  'save' => true,
  'id_name' => 'fyn_qr_code_boxes_fyn_stock_in_1fyn_qr_code_boxes_ida',
  'link' => 'fyn_qr_code_boxes_fyn_stock_in_1',
  'table' => 'fyn_qr_code_boxes',
  'module' => 'fyn_QR_CODE_BOXES',
  'rname' => 'name',
);
$dictionary["fyn_Stock_In"]["fields"]["fyn_qr_code_boxes_fyn_stock_in_1fyn_qr_code_boxes_ida"] = array (
  'name' => 'fyn_qr_code_boxes_fyn_stock_in_1fyn_qr_code_boxes_ida',
  'type' => 'link',
  'relationship' => 'fyn_qr_code_boxes_fyn_stock_in_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_FYN_QR_CODE_BOXES_FYN_STOCK_IN_1_FROM_FYN_STOCK_IN_TITLE',
);


 // created: 2018-12-12 18:47:10
$dictionary['fyn_Stock_In']['fields']['quantity']['required']=true;
$dictionary['fyn_Stock_In']['fields']['quantity']['default']='1';

 

 // created: 2019-06-28 17:13:52
$dictionary['fyn_Stock_In']['fields']['selectvehicle_c']['inline_edit']='1';
$dictionary['fyn_Stock_In']['fields']['selectvehicle_c']['labelValue']='Select Vehicle';

 

 // created: 2019-05-26 19:27:42
$dictionary['fyn_Stock_In']['fields']['date_entered']['comments']='Date record created';
$dictionary['fyn_Stock_In']['fields']['date_entered']['merge_filter']='disabled';

 

// created: 2019-05-28 19:46:01
$dictionary["fyn_Stock_In"]["fields"]["fyn_stock_in_fyn_qr_code_boxes_1"] = array (
  'name' => 'fyn_stock_in_fyn_qr_code_boxes_1',
  'type' => 'link',
  'relationship' => 'fyn_stock_in_fyn_qr_code_boxes_1',
  'source' => 'non-db',
  'module' => 'fyn_QR_CODE_BOXES',
  'bean_name' => 'fyn_QR_CODE_BOXES',
  'side' => 'right',
  'vname' => 'LBL_FYN_STOCK_IN_FYN_QR_CODE_BOXES_1_FROM_FYN_QR_CODE_BOXES_TITLE',
);


 // created: 2019-07-09 05:01:17
$dictionary['fyn_Stock_In']['fields']['from1_c']['inline_edit']='1';
$dictionary['fyn_Stock_In']['fields']['from1_c']['labelValue']='From';

 

 // created: 2019-07-09 05:02:32
$dictionary['fyn_Stock_In']['fields']['status_c']['inline_edit']='1';
$dictionary['fyn_Stock_In']['fields']['status_c']['labelValue']='Status';

 

// created: 2018-11-30 20:37:44
$dictionary["fyn_Stock_In"]["fields"]["fyn_qr_code_pallette_fyn_stock_in_1"] = array (
  'name' => 'fyn_qr_code_pallette_fyn_stock_in_1',
  'type' => 'link',
  'relationship' => 'fyn_qr_code_pallette_fyn_stock_in_1',
  'source' => 'non-db',
  'module' => 'fyn_QR_CODE_PALLETTE',
  'bean_name' => 'fyn_QR_CODE_PALLETTE',
  'vname' => 'LBL_FYN_QR_CODE_PALLETTE_FYN_STOCK_IN_1_FROM_FYN_QR_CODE_PALLETTE_TITLE',
  'id_name' => 'fyn_qr_code_pallette_fyn_stock_in_1fyn_qr_code_pallette_ida',
);
$dictionary["fyn_Stock_In"]["fields"]["fyn_qr_code_pallette_fyn_stock_in_1_name"] = array (
  'name' => 'fyn_qr_code_pallette_fyn_stock_in_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_FYN_QR_CODE_PALLETTE_FYN_STOCK_IN_1_FROM_FYN_QR_CODE_PALLETTE_TITLE',
  'save' => true,
  'id_name' => 'fyn_qr_code_pallette_fyn_stock_in_1fyn_qr_code_pallette_ida',
  'link' => 'fyn_qr_code_pallette_fyn_stock_in_1',
  'table' => 'fyn_qr_code_pallette',
  'module' => 'fyn_QR_CODE_PALLETTE',
  'rname' => 'name',
);
$dictionary["fyn_Stock_In"]["fields"]["fyn_qr_code_pallette_fyn_stock_in_1fyn_qr_code_pallette_ida"] = array (
  'name' => 'fyn_qr_code_pallette_fyn_stock_in_1fyn_qr_code_pallette_ida',
  'type' => 'link',
  'relationship' => 'fyn_qr_code_pallette_fyn_stock_in_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_FYN_QR_CODE_PALLETTE_FYN_STOCK_IN_1_FROM_FYN_STOCK_IN_TITLE',
);


 // created: 2019-07-09 05:02:05
$dictionary['fyn_Stock_In']['fields']['vender_c']['inline_edit']='1';
$dictionary['fyn_Stock_In']['fields']['vender_c']['labelValue']='Vender';

 

 // created: 2019-06-28 17:13:52
$dictionary['fyn_Stock_In']['fields']['fyn_vehicle_id_c']['inline_edit']=1;

 

 // created: 2019-06-28 17:13:52
$dictionary['fyn_Stock_In']['fields']['do_not_delete_c']['inline_edit']='1';
$dictionary['fyn_Stock_In']['fields']['do_not_delete_c']['labelValue']='do not delete';

 

// created: 2018-11-19 23:27:38
$dictionary["fyn_Stock_In"]["fields"]["aos_products_fyn_stock_in_1"] = array (
  'name' => 'aos_products_fyn_stock_in_1',
  'type' => 'link',
  'relationship' => 'aos_products_fyn_stock_in_1',
  'source' => 'non-db',
  'module' => 'AOS_Products',
  'bean_name' => 'AOS_Products',
  'vname' => 'LBL_AOS_PRODUCTS_FYN_STOCK_IN_1_FROM_AOS_PRODUCTS_TITLE',
  'id_name' => 'aos_products_fyn_stock_in_1aos_products_ida',
);
$dictionary["fyn_Stock_In"]["fields"]["aos_products_fyn_stock_in_1_name"] = array (
  'name' => 'aos_products_fyn_stock_in_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_AOS_PRODUCTS_FYN_STOCK_IN_1_FROM_AOS_PRODUCTS_TITLE',
  'save' => true,
  'id_name' => 'aos_products_fyn_stock_in_1aos_products_ida',
  'link' => 'aos_products_fyn_stock_in_1',
  'table' => 'aos_products',
  'module' => 'AOS_Products',
  'rname' => 'name',
);
$dictionary["fyn_Stock_In"]["fields"]["aos_products_fyn_stock_in_1aos_products_ida"] = array (
  'name' => 'aos_products_fyn_stock_in_1aos_products_ida',
  'type' => 'link',
  'relationship' => 'aos_products_fyn_stock_in_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_AOS_PRODUCTS_FYN_STOCK_IN_1_FROM_FYN_STOCK_IN_TITLE',
);


 // created: 2018-12-01 00:31:45
$dictionary['fyn_Stock_In']['fields']['name']['required']=false;
$dictionary['fyn_Stock_In']['fields']['name']['full_text_search']=array (
);

 
?>