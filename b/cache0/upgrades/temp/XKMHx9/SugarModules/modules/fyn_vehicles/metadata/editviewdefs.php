<?php
$module_name = 'fyn_vehicles';
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
          0 => 'name',
          1 => 
          array (
            'name' => 'vehicle_no_c',
            'label' => 'LBL_VEHICLE_NO_C',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'stockin_c',
            'label' => 'LBL_STOCKIN',
          ),
          1 => 
          array (
            'name' => 'stockout_c',
            'label' => 'LBL_STOCKOUT',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'balstock_c',
            'label' => 'LBL_BALSTOCK',
          ),
          1 => '',
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
