<?php
 // created: 2019-06-11 17:08:59
$layout_defs["Accounts"]["subpanel_setup"]['accounts_fp_events_2'] = array (
  'order' => 100,
  'module' => 'FP_events',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_ACCOUNTS_FP_EVENTS_2_FROM_FP_EVENTS_TITLE',
  'get_subpanel_data' => 'accounts_fp_events_2',
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
