<?php
 // created: 2018-11-30 21:04:02
$layout_defs["AOS_Products"]["subpanel_setup"]['aos_products_vs_vehiclestockout_1'] = array (
  'order' => 100,
  'module' => 'vs_vehiclestockOUT',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_AOS_PRODUCTS_VS_VEHICLESTOCKOUT_1_FROM_VS_VEHICLESTOCKOUT_TITLE',
  'get_subpanel_data' => 'aos_products_vs_vehiclestockout_1',
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