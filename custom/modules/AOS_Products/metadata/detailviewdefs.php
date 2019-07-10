<?php
$module_name = 'AOS_Products';
$viewdefs [$module_name] = 
array (
  'DetailView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 'EDIT',
          1 => 'DUPLICATE',
          2 => 'DELETE',
        ),
      ),
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
        'LBL_DETAILVIEW_PANEL1' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => true,
    ),
    'includes' => 
    array (
      0 => 
      array (
        'file' => 'custom/modules/AOS_Products/js/jquery-1.10.2.js',
      ),
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'name',
            'label' => 'LBL_NAME',
          ),
          1 => 
          array (
            'name' => 'part_number',
            'label' => 'LBL_PART_NUMBER',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'price',
            'label' => 'LBL_PRICE',
          ),
          1 => 
          array (
            'name' => 'product_qr_code_c',
            'label' => 'LBL_PRODUCT_QR_CODE',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'stockin_c',
            'label' => 'LBL_STOCKIN',
          ),
          1 => 
          array (
            'name' => 'stock_in_from_farm_c',
            'label' => 'LBL_STOCK_IN_FROM_FARM',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'type',
            'label' => 'LBL_TYPE',
          ),
          1 => 
          array (
            'name' => 'backorders_count_c',
            'label' => 'LBL_BACKORDERS_COUNT',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'maincode',
            'studio' => 'visible',
            'label' => 'LBL_MAINCODE',
          ),
          1 => 
          array (
            'name' => 'assigned_user_name',
            'label' => 'LBL_ASSIGNED_TO_NAME',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'category',
            'studio' => 'visible',
            'label' => 'LBL_CATEGORY',
          ),
          1 => 
          array (
            'name' => 'minimum_quantity_onhand_c',
            'label' => 'LBL_MINIMUM_QUANTITY_ONHAND',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'description',
            'label' => 'LBL_DESCRIPTION',
          ),
          1 => 
          array (
            'name' => 'order_update_daily_c',
            'label' => 'LBL_ORDER_UPDATE_DAILY',
          ),
        ),
      ),
      'lbl_detailview_panel1' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'balance_c',
            'label' => 'LBL_BALANCE',
          ),
          1 => 
          array (
            'name' => 'disposable_c',
            'label' => 'LBL_DISPOSABLE',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'reserve_c',
            'label' => 'LBL_RESERVE',
          ),
          1 => 
          array (
            'name' => 'defect_c',
            'label' => 'LBL_DEFECT',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'unknown_c',
            'label' => 'LBL_UNKNOWN',
          ),
          1 => 
          array (
            'name' => 'internal_locations_c',
            'label' => 'LBL_INTERNAL_LOCATIONS',
          ),
        ),
      ),
    ),
  ),
);
;
?>
