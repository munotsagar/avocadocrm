<?php
$module_name = 'fyn_routes';
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
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 'assigned_user_name',
          1 => 
          array (
            'name' => 'fyn_vlzs_fyn_routes_1_name',
            'label' => 'LBL_FYN_VLZS_FYN_ROUTES_1_FROM_FYN_VLZS_TITLE',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'zipcode_c',
            'label' => 'LBL_ZIPCODE',
          ),
          1 => '',
        ),
        2 => 
        array (
          0 => 'description',
        ),
      ),
    ),
  ),
);
;
?>
