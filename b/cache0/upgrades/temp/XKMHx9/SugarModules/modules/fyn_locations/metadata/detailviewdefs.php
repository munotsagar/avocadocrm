<?php
$module_name = 'fyn_locations';
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
          3 => 'FIND_DUPLICATES',
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
