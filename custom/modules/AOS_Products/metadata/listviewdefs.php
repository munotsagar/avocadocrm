<?php
$listViewDefs ['AOS_Products'] = 
array (
  'NAME' => 
  array (
    'width' => '15%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'PART_NUMBER' => 
  array (
    'width' => '10%',
    'label' => 'LBL_PART_NUMBER',
    'default' => true,
  ),
  'MAINCODE' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_MAINCODE',
    'width' => '10%',
  ),
  'PRODUCT_QR_CODE_C' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'label' => 'LBL_PRODUCT_QR_CODE',
    'width' => '10%',
  ),
  'BALANCE_C' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'label' => 'LBL_BALANCE',
    'width' => '10%',
  ),
  'PRICE' => 
  array (
    'width' => '10%',
    'label' => 'LBL_PRICE',
    'currency_format' => true,
    'default' => true,
  ),
  'STOCKIN_C' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'label' => 'LBL_STOCKIN',
    'width' => '10%',
  ),
  'DATE_ENTERED' => 
  array (
    'width' => '5%',
    'label' => 'LBL_DATE_ENTERED',
    'default' => true,
  ),
  'AOS_PRODUCT_CATEGORY_NAME' => 
  array (
    'type' => 'relate',
    'studio' => 'visible',
    'label' => 'LBL_AOS_PRODUCT_CATEGORYS_NAME',
    'id' => 'AOS_PRODUCT_CATEGORY_ID',
    'link' => true,
    'width' => '10%',
    'default' => false,
    'related_fields' => 
    array (
      0 => 'aos_product_category_id',
    ),
  ),
  'WAREHOUSE_BALANCE_STOCKS_C' => 
  array (
    'type' => 'int',
    'default' => false,
    'label' => 'LBL_WAREHOUSE_BALANCE_STOCKS',
    'width' => '10%',
  ),
  'STOCKOUT_C' => 
  array (
    'type' => 'varchar',
    'default' => false,
    'label' => 'LBL_STOCKOUT',
    'width' => '10%',
  ),
  'TYPE' => 
  array (
    'type' => 'enum',
    'default' => false,
    'studio' => 'visible',
    'label' => 'LBL_TYPE',
    'width' => '10%',
  ),
  'TRUCK_C' => 
  array (
    'type' => 'enum',
    'default' => false,
    'studio' => 'visible',
    'label' => 'LBL_TRUCK',
    'width' => '10%',
  ),
  'CREATED_BY_NAME' => 
  array (
    'width' => '10%',
    'label' => 'LBL_CREATED',
    'default' => false,
    'module' => 'Users',
    'link' => true,
    'id' => 'CREATED_BY',
  ),
  'COST' => 
  array (
    'width' => '10%',
    'label' => 'LBL_COST',
    'currency_format' => true,
    'default' => false,
  ),
);
;
?>
