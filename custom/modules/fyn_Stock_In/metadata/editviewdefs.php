<?php
$module_name = 'fyn_Stock_In';
$viewdefs [$module_name] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'useTabs' => false,
      'tabDefs' => 
      array (
        'DEFAULT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => true,
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 'assigned_user_name',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'quantity',
            'label' => 'LBL_QUANTITY',
          ),
          1 => 
          array (
            'name' => 'aos_products_fyn_stock_in_1_name',
            'label' => 'LBL_AOS_PRODUCTS_FYN_STOCK_IN_1_FROM_AOS_PRODUCTS_TITLE',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'from1_c',
            'studio' => 'visible',
            'label' => 'LBL_FROM1',
          ),
          1 => 
          array (
            'name' => 'selectvehicle_c',
            'studio' => 'visible',
            'label' => 'LBL_SELECTVEHICLE',
          ),
        ),
        3 => 
        array (
          0 => 'description',
        ),
      ),
    ),
  ),
);
;
?>
