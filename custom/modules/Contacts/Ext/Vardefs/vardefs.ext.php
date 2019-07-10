<?php 
 //WARNING: The contents of this file are auto-generated


 // created: 2018-11-19 11:15:46
$dictionary['Contact']['fields']['jjwg_maps_lng_c']['inline_edit']=1;

 

 // created: 2018-11-19 11:15:46
$dictionary['Contact']['fields']['jjwg_maps_address_c']['inline_edit']=1;

 

 // created: 2018-11-19 11:15:46
$dictionary['Contact']['fields']['jjwg_maps_geocode_status_c']['inline_edit']=1;

 

 // created: 2018-11-19 11:15:46
$dictionary['Contact']['fields']['jjwg_maps_lat_c']['inline_edit']=1;

 

// created: 2019-06-11 15:38:43
$dictionary["Contact"]["fields"]["accounts_contacts_1"] = array (
  'name' => 'accounts_contacts_1',
  'type' => 'link',
  'relationship' => 'accounts_contacts_1',
  'source' => 'non-db',
  'module' => 'Accounts',
  'bean_name' => 'Account',
  'vname' => 'LBL_ACCOUNTS_CONTACTS_1_FROM_ACCOUNTS_TITLE',
  'id_name' => 'accounts_contacts_1accounts_ida',
);
$dictionary["Contact"]["fields"]["accounts_contacts_1_name"] = array (
  'name' => 'accounts_contacts_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_ACCOUNTS_CONTACTS_1_FROM_ACCOUNTS_TITLE',
  'save' => true,
  'id_name' => 'accounts_contacts_1accounts_ida',
  'link' => 'accounts_contacts_1',
  'table' => 'accounts',
  'module' => 'Accounts',
  'rname' => 'name',
);
$dictionary["Contact"]["fields"]["accounts_contacts_1accounts_ida"] = array (
  'name' => 'accounts_contacts_1accounts_ida',
  'type' => 'link',
  'relationship' => 'accounts_contacts_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_ACCOUNTS_CONTACTS_1_FROM_CONTACTS_TITLE',
);

?>