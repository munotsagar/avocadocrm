<?php
 // created: 2018-11-29 19:26:13
$layout_defs["AOS_Invoices"]["subpanel_setup"]['aos_invoices_fyn_stock_out_1'] = array (
  'order' => 100,
  'module' => 'fyn_Stock_out',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_AOS_INVOICES_FYN_STOCK_OUT_1_FROM_FYN_STOCK_OUT_TITLE',
  'get_subpanel_data' => 'aos_invoices_fyn_stock_out_1',
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
