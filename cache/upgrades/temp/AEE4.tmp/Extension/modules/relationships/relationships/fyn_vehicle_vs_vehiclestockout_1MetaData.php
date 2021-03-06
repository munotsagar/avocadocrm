<?php
// created: 2018-11-30 17:28:41
$dictionary["fyn_vehicle_vs_vehiclestockout_1"] = array (
  'true_relationship_type' => 'one-to-many',
  'from_studio' => true,
  'relationships' => 
  array (
    'fyn_vehicle_vs_vehiclestockout_1' => 
    array (
      'lhs_module' => 'fyn_Vehicle',
      'lhs_table' => 'fyn_vehicle',
      'lhs_key' => 'id',
      'rhs_module' => 'vs_vehiclestockOUT',
      'rhs_table' => 'vs_vehiclestockout',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'fyn_vehicle_vs_vehiclestockout_1_c',
      'join_key_lhs' => 'fyn_vehicle_vs_vehiclestockout_1fyn_vehicle_ida',
      'join_key_rhs' => 'fyn_vehicle_vs_vehiclestockout_1vs_vehiclestockout_idb',
    ),
  ),
  'table' => 'fyn_vehicle_vs_vehiclestockout_1_c',
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
      'name' => 'fyn_vehicle_vs_vehiclestockout_1fyn_vehicle_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'fyn_vehicle_vs_vehiclestockout_1vs_vehiclestockout_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'fyn_vehicle_vs_vehiclestockout_1spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'fyn_vehicle_vs_vehiclestockout_1_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'fyn_vehicle_vs_vehiclestockout_1fyn_vehicle_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'fyn_vehicle_vs_vehiclestockout_1_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'fyn_vehicle_vs_vehiclestockout_1vs_vehiclestockout_idb',
      ),
    ),
  ),
);