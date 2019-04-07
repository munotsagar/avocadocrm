<?php 
 //WARNING: The contents of this file are auto-generated


 // created: 2018-12-01 09:50:39
$dictionary['fyn_locations']['fields']['state_c']['inline_edit']='1';
$dictionary['fyn_locations']['fields']['state_c']['labelValue']='State';

 

 // created: 2018-12-01 09:45:54
$dictionary['fyn_locations']['fields']['city_c']['inline_edit']='1';
$dictionary['fyn_locations']['fields']['city_c']['labelValue']='City';

 

// created: 2018-12-01 15:02:29
$dictionary["fyn_locations"]["fields"]["fyn_locations_aos_invoices_1"] = array (
  'name' => 'fyn_locations_aos_invoices_1',
  'type' => 'link',
  'relationship' => 'fyn_locations_aos_invoices_1',
  'source' => 'non-db',
  'module' => 'AOS_Invoices',
  'bean_name' => 'AOS_Invoices',
  'side' => 'right',
  'vname' => 'LBL_FYN_LOCATIONS_AOS_INVOICES_1_FROM_AOS_INVOICES_TITLE',
);


 // created: 2018-12-01 09:50:03
$dictionary['fyn_locations']['fields']['location_c']['inline_edit']='1';
$dictionary['fyn_locations']['fields']['location_c']['labelValue']='Area';

 

 // created: 2018-12-01 09:46:00
$dictionary['fyn_locations']['fields']['name']['inline_edit']=true;
$dictionary['fyn_locations']['fields']['name']['duplicate_merge']='disabled';
$dictionary['fyn_locations']['fields']['name']['duplicate_merge_dom_value']='0';
$dictionary['fyn_locations']['fields']['name']['merge_filter']='disabled';
$dictionary['fyn_locations']['fields']['name']['unified_search']=false;

 

// created: 2018-12-05 15:23:59
$dictionary["fyn_locations"]["fields"]["fyn_vlzs_fyn_locations_1"] = array (
  'name' => 'fyn_vlzs_fyn_locations_1',
  'type' => 'link',
  'relationship' => 'fyn_vlzs_fyn_locations_1',
  'source' => 'non-db',
  'module' => 'fyn_vlzs',
  'bean_name' => 'fyn_vlzs',
  'vname' => 'LBL_FYN_VLZS_FYN_LOCATIONS_1_FROM_FYN_VLZS_TITLE',
  'id_name' => 'fyn_vlzs_fyn_locations_1fyn_vlzs_ida',
);
$dictionary["fyn_locations"]["fields"]["fyn_vlzs_fyn_locations_1_name"] = array (
  'name' => 'fyn_vlzs_fyn_locations_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_FYN_VLZS_FYN_LOCATIONS_1_FROM_FYN_VLZS_TITLE',
  'save' => true,
  'id_name' => 'fyn_vlzs_fyn_locations_1fyn_vlzs_ida',
  'link' => 'fyn_vlzs_fyn_locations_1',
  'table' => 'fyn_vlzs',
  'module' => 'fyn_vlzs',
  'rname' => 'name',
);
$dictionary["fyn_locations"]["fields"]["fyn_vlzs_fyn_locations_1fyn_vlzs_ida"] = array (
  'name' => 'fyn_vlzs_fyn_locations_1fyn_vlzs_ida',
  'type' => 'link',
  'relationship' => 'fyn_vlzs_fyn_locations_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_FYN_VLZS_FYN_LOCATIONS_1_FROM_FYN_LOCATIONS_TITLE',
);


 // created: 2018-12-01 09:46:57
$dictionary['fyn_locations']['fields']['country_c']['inline_edit']='1';
$dictionary['fyn_locations']['fields']['country_c']['labelValue']='Country';

 
?>