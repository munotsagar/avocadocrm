<?php
$module_name = 'fyn_locations';
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
            'name' => 'location_c',
            'label' => 'LBL_LOCATION',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'state_c',
            'label' => 'LBL_STATE',
          ),
          1 => 
          array (
            'name' => 'city_c',
            'label' => 'LBL_CITY',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'county_c',
            'label' => 'LBL_COUNTY',
          ),
        ),
      ),
    ),
  ),
);
;
?>