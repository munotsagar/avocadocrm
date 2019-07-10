<?php
 // created: 2019-06-08 23:41:30
$layout_defs["AOS_Products"]["subpanel_setup"]['fyn_vehicle_aos_products_1'] = array (
  'order' => 100,
  'module' => 'fyn_Vehicle',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_FYN_VEHICLE_AOS_PRODUCTS_1_FROM_FYN_VEHICLE_TITLE',
  'get_subpanel_data' => 'fyn_vehicle_aos_products_1',
  'top_buttons' => 
  array (
    0 => 
    array (
      'widget_class' => 'SubPanelTopButtonQuickCreate',
    ),
    1 => 
    array (
      'widget_class' => 'SubPanelTopSelectButton',
      'mode' => 'MultiSelect',
    ),
  ),
);
