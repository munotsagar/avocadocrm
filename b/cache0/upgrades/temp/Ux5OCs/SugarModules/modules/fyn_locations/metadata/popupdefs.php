<?php
$popupMeta = array (
    'moduleMain' => 'fyn_locations',
    'varName' => 'fyn_locations',
    'orderBy' => 'fyn_locations.name',
    'whereClauses' => array (
  'name' => 'fyn_locations.name',
  'county_c' => 'fyn_locations_cstm.county_c',
  'state_c' => 'fyn_locations_cstm.state_c',
  'city_c' => 'fyn_locations_cstm.city_c',
),
    'searchInputs' => array (
  1 => 'name',
  4 => 'county_c',
  5 => 'state_c',
  6 => 'city_c',
),
    'searchdefs' => array (
  'name' => 
  array (
    'name' => 'name',
    'width' => '10%',
  ),
  'county_c' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_COUNTY',
    'width' => '10%',
    'name' => 'county_c',
  ),
  'state_c' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_STATE',
    'width' => '10%',
    'name' => 'state_c',
  ),
  'city_c' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_CITY',
    'width' => '10%',
    'name' => 'city_c',
  ),
),
);
