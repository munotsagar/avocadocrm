<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2018-12-01 07:11:18
$dictionary["fyn_routes"]["fields"]["fyn_vlzs_fyn_routes_1"] = array (
  'name' => 'fyn_vlzs_fyn_routes_1',
  'type' => 'link',
  'relationship' => 'fyn_vlzs_fyn_routes_1',
  'source' => 'non-db',
  'module' => 'fyn_vlzs',
  'bean_name' => 'fyn_vlzs',
  'vname' => 'LBL_FYN_VLZS_FYN_ROUTES_1_FROM_FYN_VLZS_TITLE',
  'id_name' => 'fyn_vlzs_fyn_routes_1fyn_vlzs_ida',
);
$dictionary["fyn_routes"]["fields"]["fyn_vlzs_fyn_routes_1_name"] = array (
  'name' => 'fyn_vlzs_fyn_routes_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_FYN_VLZS_FYN_ROUTES_1_FROM_FYN_VLZS_TITLE',
  'save' => true,
  'id_name' => 'fyn_vlzs_fyn_routes_1fyn_vlzs_ida',
  'link' => 'fyn_vlzs_fyn_routes_1',
  'table' => 'fyn_vlzs',
  'module' => 'fyn_vlzs',
  'rname' => 'name',
);
$dictionary["fyn_routes"]["fields"]["fyn_vlzs_fyn_routes_1fyn_vlzs_ida"] = array (
  'name' => 'fyn_vlzs_fyn_routes_1fyn_vlzs_ida',
  'type' => 'link',
  'relationship' => 'fyn_vlzs_fyn_routes_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_FYN_VLZS_FYN_ROUTES_1_FROM_FYN_ROUTES_TITLE',
);


// created: 2018-12-01 17:02:43
$dictionary["fyn_routes"]["fields"]["fyn_routes_aos_invoices_1"] = array (
  'name' => 'fyn_routes_aos_invoices_1',
  'type' => 'link',
  'relationship' => 'fyn_routes_aos_invoices_1',
  'source' => 'non-db',
  'module' => 'AOS_Invoices',
  'bean_name' => 'AOS_Invoices',
  'side' => 'right',
  'vname' => 'LBL_FYN_ROUTES_AOS_INVOICES_1_FROM_AOS_INVOICES_TITLE',
);


 // created: 2018-12-01 16:36:46
$dictionary['fyn_routes']['fields']['zipcode_c']['inline_edit']='1';
$dictionary['fyn_routes']['fields']['zipcode_c']['labelValue']='Zip Code';

 
?>