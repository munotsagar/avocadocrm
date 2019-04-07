<?php
$module_name = 'fyn_locations';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'COUNTY_C' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'label' => 'LBL_COUNTY',
    'width' => '10%',
  ),
  'LOCATION_C' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'label' => 'LBL_LOCATION',
    'width' => '10%',
  ),
  'CITY_C' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'label' => 'LBL_CITY',
    'width' => '10%',
  ),
  'ASSIGNED_USER_NAME' => 
  array (
    'width' => '9%',
    'label' => 'LBL_ASSIGNED_TO_NAME',
    'module' => 'Employees',
    'id' => 'ASSIGNED_USER_ID',
    'default' => true,
  ),
  'DESCRIPTION' => 
  array (
    'type' => 'text',
    'label' => 'LBL_DESCRIPTION',
    'sortable' => false,
    'width' => '10%',
    'default' => false,
  ),
);
;
?>
