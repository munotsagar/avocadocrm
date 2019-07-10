<?php
// created: 2019-06-08 23:41:30
$dictionary["fyn_vehicle_aos_products_1"] = array (
  'true_relationship_type' => 'many-to-many',
  'from_studio' => true,
  'relationships' => 
  array (
    'fyn_vehicle_aos_products_1' => 
    array (
      'lhs_module' => 'fyn_Vehicle',
      'lhs_table' => 'fyn_vehicle',
      'lhs_key' => 'id',
      'rhs_module' => 'AOS_Products',
      'rhs_table' => 'aos_products',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'fyn_vehicle_aos_products_1_c',
      'join_key_lhs' => 'fyn_vehicle_aos_products_1fyn_vehicle_ida',
      'join_key_rhs' => 'fyn_vehicle_aos_products_1aos_products_idb',
    ),
  ),
  'table' => 'fyn_vehicle_aos_products_1_c',
  'fields' => 
  array (
    0 => 
    array (
      'name' => 'id',
      'type' => 'varchar',
      'len' => 36,
    ),
    1 => 
    array (
      'name' => 'date_modified',
      'type' => 'datetime',
    ),
    2 => 
    array (
      'name' => 'deleted',
      'type' => 'bool',
      'len' => '1',
      'default' => '0',
      'required' => true,
    ),
    3 => 
    array (
      'name' => 'fyn_vehicle_aos_products_1fyn_vehicle_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'fyn_vehicle_aos_products_1aos_products_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'fyn_vehicle_aos_products_1spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'fyn_vehicle_aos_products_1_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'fyn_vehicle_aos_products_1fyn_vehicle_ida',
        1 => 'fyn_vehicle_aos_products_1aos_products_idb',
      ),
    ),
  ),
);