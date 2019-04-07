<?php
// created: 2018-11-30 21:03:49
$dictionary["vs_Vehicle_StockIN"]["fields"]["aos_products_vs_vehicle_stockin_1"] = array (
  'name' => 'aos_products_vs_vehicle_stockin_1',
  'type' => 'link',
  'relationship' => 'aos_products_vs_vehicle_stockin_1',
  'source' => 'non-db',
  'module' => 'AOS_Products',
  'bean_name' => 'AOS_Products',
  'vname' => 'LBL_AOS_PRODUCTS_VS_VEHICLE_STOCKIN_1_FROM_AOS_PRODUCTS_TITLE',
  'id_name' => 'aos_products_vs_vehicle_stockin_1aos_products_ida',
);
$dictionary["vs_Vehicle_StockIN"]["fields"]["aos_products_vs_vehicle_stockin_1_name"] = array (
  'name' => 'aos_products_vs_vehicle_stockin_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_AOS_PRODUCTS_VS_VEHICLE_STOCKIN_1_FROM_AOS_PRODUCTS_TITLE',
  'save' => true,
  'id_name' => 'aos_products_vs_vehicle_stockin_1aos_products_ida',
  'link' => 'aos_products_vs_vehicle_stockin_1',
  'table' => 'aos_products',
  'module' => 'AOS_Products',
  'rname' => 'name',
);
$dictionary["vs_Vehicle_StockIN"]["fields"]["aos_products_vs_vehicle_stockin_1aos_products_ida"] = array (
  'name' => 'aos_products_vs_vehicle_stockin_1aos_products_ida',
  'type' => 'link',
  'relationship' => 'aos_products_vs_vehicle_stockin_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_AOS_PRODUCTS_VS_VEHICLE_STOCKIN_1_FROM_VS_VEHICLE_STOCKIN_TITLE',
);
