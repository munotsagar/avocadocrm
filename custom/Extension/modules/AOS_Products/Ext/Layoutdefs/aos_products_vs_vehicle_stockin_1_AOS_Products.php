<?php
 // created: 2018-11-30 21:03:49
$layout_defs["AOS_Products"]["subpanel_setup"]['aos_products_vs_vehicle_stockin_1'] = array (
  'order' => 100,
  'module' => 'vs_Vehicle_StockIN',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_AOS_PRODUCTS_VS_VEHICLE_STOCKIN_1_FROM_VS_VEHICLE_STOCKIN_TITLE',
  'get_subpanel_data' => 'aos_products_vs_vehicle_stockin_1',
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
