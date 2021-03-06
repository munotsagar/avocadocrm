<?php
/**
 *
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
 *
 * SuiteCRM is an extension to SugarCRM Community Edition developed by SalesAgility Ltd.
 * Copyright (C) 2011 - 2018 SalesAgility Ltd.
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
 * details.
 *
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 *
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 *
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 *
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo and "Supercharged by SuiteCRM" logo. If the display of the logos is not
 * reasonably feasible for technical reasons, the Appropriate Legal Notices must
 * display the words "Powered by SugarCRM" and "Supercharged by SuiteCRM".
 */

// THIS CONTENT IS GENERATED BY MBPackage.php
$manifest = array (
  0 => 
  array (
    'acceptable_sugar_versions' => 
    array (
      0 => '6.5.25',
    ),
  ),
  1 => 
  array (
    'acceptable_sugar_flavors' => 
    array (
      0 => 'CE',
      1 => 'PRO',
      2 => 'ENT',
    ),
  ),
  'readme' => '',
  'key' => '',
  'author' => 'driver_commission_studio',
  'description' => 'driver_commission_studio',
  'icon' => '',
  'is_uninstallable' => true,
  'name' => 'driver_commission_studio',
  'published_date' => '2019-07-07 15:03:41',
  'type' => 'module',
  'version' => 1562511824,
  'remove_tables' => 'prompt',
);


$installdefs = array (
  'id' => 'driver_commission_studio',
  'relationships' => 
  array (
  ),
  'language' => 
  array (
    0 => 
    array (
      'from' => '<basepath>/SugarModules/include/language/en_us.driver_commission_studio.php',
      'to_module' => 'application',
      'language' => 'en_us',
    ),
    1 => 
    array (
      'from' => '<basepath>/SugarModules/modules/dc_driver_commission/language/en_us.lang.php',
      'to_module' => 'dc_driver_commission',
      'language' => 'en_us',
    ),
  ),
  'custom_fields' => 
  array (
    'dc_driver_commissionaos_invoices_id_c' => 
    array (
      'id' => 'dc_driver_commissionaos_invoices_id_c',
      'name' => 'aos_invoices_id_c',
      'label' => 'LBL_INVOICE_AOS_INVOICES_ID',
      'comments' => '',
      'help' => '',
      'module' => 'dc_driver_commission',
      'type' => 'id',
      'max_size' => '36',
      'require_option' => '0',
      'default_value' => NULL,
      'date_modified' => '2019-07-07 14:53:46',
      'deleted' => '0',
      'audited' => '0',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '0',
      'importable' => 'true',
      'ext1' => '',
      'ext2' => '',
      'ext3' => '',
      'ext4' => '',
    ),
    'dc_driver_commissioncommission_amount_c' => 
    array (
      'id' => 'dc_driver_commissioncommission_amount_c',
      'name' => 'commission_amount_c',
      'label' => 'LBL_COMMISSION_AMOUNT',
      'comments' => 'Commission Amount',
      'help' => 'Commission Amount',
      'module' => 'dc_driver_commission',
      'type' => 'varchar',
      'max_size' => '255',
      'require_option' => '1',
      'default_value' => '0',
      'date_modified' => '2019-07-07 14:58:57',
      'deleted' => '0',
      'audited' => '0',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '1',
      'importable' => 'true',
      'ext1' => '',
      'ext2' => '',
      'ext3' => '',
      'ext4' => '',
    ),
    'dc_driver_commissiondriver_c' => 
    array (
      'id' => 'dc_driver_commissiondriver_c',
      'name' => 'driver_c',
      'label' => 'LBL_DRIVER',
      'comments' => 'Driver',
      'help' => 'Driver',
      'module' => 'dc_driver_commission',
      'type' => 'relate',
      'max_size' => '255',
      'require_option' => '1',
      'default_value' => NULL,
      'date_modified' => '2019-07-07 14:52:41',
      'deleted' => '0',
      'audited' => '0',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '1',
      'importable' => 'true',
      'ext1' => '',
      'ext2' => 'Users',
      'ext3' => 'user_id_c',
      'ext4' => '',
    ),
    'dc_driver_commissionflat_rate_commission_c' => 
    array (
      'id' => 'dc_driver_commissionflat_rate_commission_c',
      'name' => 'flat_rate_commission_c',
      'label' => 'LBL_FLAT_RATE_COMMISSION',
      'comments' => 'Flat Rate Commission',
      'help' => 'Flat Rate Commission',
      'module' => 'dc_driver_commission',
      'type' => 'enum',
      'max_size' => '100',
      'require_option' => '0',
      'default_value' => NULL,
      'date_modified' => '2019-07-07 14:56:50',
      'deleted' => '0',
      'audited' => '0',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '1',
      'importable' => 'true',
      'ext1' => 'flat_rate_commission_list',
      'ext2' => '',
      'ext3' => '',
      'ext4' => '',
    ),
    'dc_driver_commissioninvoice_c' => 
    array (
      'id' => 'dc_driver_commissioninvoice_c',
      'name' => 'invoice_c',
      'label' => 'LBL_INVOICE',
      'comments' => 'Invoice',
      'help' => 'Invoice',
      'module' => 'dc_driver_commission',
      'type' => 'relate',
      'max_size' => '255',
      'require_option' => '1',
      'default_value' => NULL,
      'date_modified' => '2019-07-07 14:53:46',
      'deleted' => '0',
      'audited' => '0',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '1',
      'importable' => 'true',
      'ext1' => '',
      'ext2' => 'AOS_Invoices',
      'ext3' => 'aos_invoices_id_c',
      'ext4' => '',
    ),
    'dc_driver_commissionpercentage_commission_c' => 
    array (
      'id' => 'dc_driver_commissionpercentage_commission_c',
      'name' => 'percentage_commission_c',
      'label' => 'LBL_PERCENTAGE_COMMISSION',
      'comments' => 'Percentage Commission',
      'help' => 'Percentage Commission',
      'module' => 'dc_driver_commission',
      'type' => 'enum',
      'max_size' => '100',
      'require_option' => '0',
      'default_value' => NULL,
      'date_modified' => '2019-07-07 14:57:52',
      'deleted' => '0',
      'audited' => '0',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '1',
      'importable' => 'true',
      'ext1' => 'percentage_commission_list',
      'ext2' => '',
      'ext3' => '',
      'ext4' => '',
    ),
    'dc_driver_commissionuser_id_c' => 
    array (
      'id' => 'dc_driver_commissionuser_id_c',
      'name' => 'user_id_c',
      'label' => 'LBL_DRIVER_USER_ID',
      'comments' => '',
      'help' => '',
      'module' => 'dc_driver_commission',
      'type' => 'id',
      'max_size' => '36',
      'require_option' => '0',
      'default_value' => NULL,
      'date_modified' => '2019-07-07 14:52:41',
      'deleted' => '0',
      'audited' => '0',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '0',
      'importable' => 'true',
      'ext1' => '',
      'ext2' => '',
      'ext3' => '',
      'ext4' => '',
    ),
  ),
  'copy' => 
  array (
    0 => 
    array (
      'from' => '<basepath>/SugarModules/modules/dc_driver_commission/metadata/detailviewdefs.php',
      'to' => 'custom/modules/dc_driver_commission/metadata/detailviewdefs.php',
    ),
    1 => 
    array (
      'from' => '<basepath>/SugarModules/modules/dc_driver_commission/metadata/detailviewdefs.php',
      'to' => 'custom/working/modules/dc_driver_commission/metadata/detailviewdefs.php',
    ),
    2 => 
    array (
      'from' => '<basepath>/SugarModules/modules/dc_driver_commission/metadata/editviewdefs.php',
      'to' => 'custom/modules/dc_driver_commission/metadata/editviewdefs.php',
    ),
    3 => 
    array (
      'from' => '<basepath>/SugarModules/modules/dc_driver_commission/metadata/editviewdefs.php',
      'to' => 'custom/working/modules/dc_driver_commission/metadata/editviewdefs.php',
    ),
    4 => 
    array (
      'from' => '<basepath>/SugarModules/modules/dc_driver_commission/metadata/listviewdefs.php',
      'to' => 'custom/modules/dc_driver_commission/metadata/listviewdefs.php',
    ),
    5 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\dc_driver_commission\\Ext\\Vardefs\\sugarfield_aos_invoices_id_c.php',
      'to' => 'custom\\Extension\\modules\\dc_driver_commission\\Ext\\Vardefs\\sugarfield_aos_invoices_id_c.php',
    ),
    6 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\dc_driver_commission\\Ext\\Vardefs\\sugarfield_commission_amount_c.php',
      'to' => 'custom\\Extension\\modules\\dc_driver_commission\\Ext\\Vardefs\\sugarfield_commission_amount_c.php',
    ),
    7 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\dc_driver_commission\\Ext\\Vardefs\\sugarfield_driver_c.php',
      'to' => 'custom\\Extension\\modules\\dc_driver_commission\\Ext\\Vardefs\\sugarfield_driver_c.php',
    ),
    8 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\dc_driver_commission\\Ext\\Vardefs\\sugarfield_flat_rate_commission_c.php',
      'to' => 'custom\\Extension\\modules\\dc_driver_commission\\Ext\\Vardefs\\sugarfield_flat_rate_commission_c.php',
    ),
    9 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\dc_driver_commission\\Ext\\Vardefs\\sugarfield_invoice_c.php',
      'to' => 'custom\\Extension\\modules\\dc_driver_commission\\Ext\\Vardefs\\sugarfield_invoice_c.php',
    ),
    10 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\dc_driver_commission\\Ext\\Vardefs\\sugarfield_percentage_commission_c.php',
      'to' => 'custom\\Extension\\modules\\dc_driver_commission\\Ext\\Vardefs\\sugarfield_percentage_commission_c.php',
    ),
    11 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\dc_driver_commission\\Ext\\Vardefs\\sugarfield_user_id_c.php',
      'to' => 'custom\\Extension\\modules\\dc_driver_commission\\Ext\\Vardefs\\sugarfield_user_id_c.php',
    ),
  ),
);