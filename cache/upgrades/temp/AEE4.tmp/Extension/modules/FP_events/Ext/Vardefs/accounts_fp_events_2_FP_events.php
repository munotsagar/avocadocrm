<?php
// created: 2019-06-11 17:08:59
$dictionary["FP_events"]["fields"]["accounts_fp_events_2"] = array (
  'name' => 'accounts_fp_events_2',
  'type' => 'link',
  'relationship' => 'accounts_fp_events_2',
  'source' => 'non-db',
  'module' => 'Accounts',
  'bean_name' => 'Account',
  'vname' => 'LBL_ACCOUNTS_FP_EVENTS_2_FROM_ACCOUNTS_TITLE',
  'id_name' => 'accounts_fp_events_2accounts_ida',
);
$dictionary["FP_events"]["fields"]["accounts_fp_events_2_name"] = array (
  'name' => 'accounts_fp_events_2_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_ACCOUNTS_FP_EVENTS_2_FROM_ACCOUNTS_TITLE',
  'save' => true,
  'id_name' => 'accounts_fp_events_2accounts_ida',
  'link' => 'accounts_fp_events_2',
  'table' => 'accounts',
  'module' => 'Accounts',
  'rname' => 'name',
);
$dictionary["FP_events"]["fields"]["accounts_fp_events_2accounts_ida"] = array (
  'name' => 'accounts_fp_events_2accounts_ida',
  'type' => 'link',
  'relationship' => 'accounts_fp_events_2',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_ACCOUNTS_FP_EVENTS_2_FROM_FP_EVENTS_TITLE',
);
