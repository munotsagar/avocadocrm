<?php
 // created: 2018-11-25 11:54:47
$layout_defs["fyn_QR_CODE_BOXES"]["subpanel_setup"]['fyn_qr_code_boxes_fyn_stock_in_1'] = array (
  'order' => 100,
  'module' => 'fyn_Stock_In',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_FYN_QR_CODE_BOXES_FYN_STOCK_IN_1_FROM_FYN_STOCK_IN_TITLE',
  'get_subpanel_data' => 'fyn_qr_code_boxes_fyn_stock_in_1',
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
