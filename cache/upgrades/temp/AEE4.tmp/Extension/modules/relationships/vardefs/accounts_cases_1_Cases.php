<?php
// created: 2019-06-11 17:07:06
$dictionary["Case"]["fields"]["accounts_cases_1"] = array (
  'name' => 'accounts_cases_1',
  'type' => 'link',
  'relationship' => 'accounts_cases_1',
  'source' => 'non-db',
  'module' => 'Accounts',
  'bean_name' => 'Account',
  'vname' => 'LBL_ACCOUNTS_CASES_1_FROM_ACCOUNTS_TITLE',
  'id_name' => 'accounts_cases_1accounts_ida',
);
$dictionary["Case"]["fields"]["accounts_cases_1_name"] = array (
  'name' => 'accounts_cases_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_ACCOUNTS_CASES_1_FROM_ACCOUNTS_TITLE',
  'save' => true,
  'id_name' => 'accounts_cases_1accounts_ida',
  'link' => 'accounts_cases_1',
  'table' => 'accounts',
  'module' => 'Accounts',
  'rname' => 'name',
);
$dictionary["Case"]["fields"]["accounts_cases_1accounts_ida"] = array (
  'name' => 'accounts_cases_1accounts_ida',
  'type' => 'link',
  'relationship' => 'accounts_cases_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_ACCOUNTS_CASES_1_FROM_CASES_TITLE',
);
