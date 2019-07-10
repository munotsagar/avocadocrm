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
  'author' => 'prod_driver_add_name_field',
  'description' => 'prod_driver_add_name_field',
  'icon' => '',
  'is_uninstallable' => true,
  'name' => 'prod_driver_add_name_field',
  'published_date' => '2019-06-30 13:53:56',
  'type' => 'module',
  'version' => 1561902839,
  'remove_tables' => 'prompt',
);


$installdefs = array (
  'id' => 'prod_driver_add_name_field',
  'relationships' => 
  array (
  ),
  'language' => 
  array (
    0 => 
    array (
      'from' => '<basepath>/SugarModules/include/language/en_us.prod_driver_add_name_field.php',
      'to_module' => 'application',
      'language' => 'en_us',
    ),
    1 => 
    array (
      'from' => '<basepath>/SugarModules/modules/prodr_Product_Driver_Stock/language/en_us.lang.php',
      'to_module' => 'prodr_Product_Driver_Stock',
      'language' => 'en_us',
    ),
  ),
  'custom_fields' => 
  array (
    'prodr_Product_Driver_Stockaos_products_id_c' => 
    array (
      'id' => 'prodr_Product_Driver_Stockaos_products_id_c',
      'name' => 'aos_products_id_c',
      'label' => 'LBL_PRODUCT_AOS_PRODUCTS_ID',
      'comments' => '',
      'help' => '',
      'module' => 'prodr_Product_Driver_Stock',
      'type' => 'id',
      'max_size' => '36',
      'require_option' => '0',
      'default_value' => NULL,
      'date_modified' => '2019-06-29 14:20:29',
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
    'prodr_Product_Driver_Stockdriver_c' => 
    array (
      'id' => 'prodr_Product_Driver_Stockdriver_c',
      'name' => 'driver_c',
      'label' => 'LBL_DRIVER',
      'comments' => 'Driver',
      'help' => 'Driver',
      'module' => 'prodr_Product_Driver_Stock',
      'type' => 'relate',
      'max_size' => '255',
      'require_option' => '1',
      'default_value' => NULL,
      'date_modified' => '2019-06-29 14:23:35',
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
    'prodr_Product_Driver_Stockproduct_c' => 
    array (
      'id' => 'prodr_Product_Driver_Stockproduct_c',
      'name' => 'product_c',
      'label' => 'LBL_PRODUCT',
      'comments' => 'Product',
      'help' => 'Product',
      'module' => 'prodr_Product_Driver_Stock',
      'type' => 'relate',
      'max_size' => '255',
      'require_option' => '1',
      'default_value' => NULL,
      'date_modified' => '2019-06-29 14:20:29',
      'deleted' => '0',
      'audited' => '0',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '1',
      'importable' => 'true',
      'ext1' => '',
      'ext2' => 'AOS_Products',
      'ext3' => 'aos_products_id_c',
      'ext4' => '',
    ),
    'prodr_Product_Driver_Stockstock_c' => 
    array (
      'id' => 'prodr_Product_Driver_Stockstock_c',
      'name' => 'stock_c',
      'label' => 'LBL_STOCK',
      'comments' => 'Stock',
      'help' => 'Stock',
      'module' => 'prodr_Product_Driver_Stock',
      'type' => 'varchar',
      'max_size' => '255',
      'require_option' => '1',
      'default_value' => '0',
      'date_modified' => '2019-06-29 14:24:36',
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
    'prodr_Product_Driver_Stockuser_id_c' => 
    array (
      'id' => 'prodr_Product_Driver_Stockuser_id_c',
      'name' => 'user_id_c',
      'label' => 'LBL_DRIVER_USER_ID',
      'comments' => '',
      'help' => '',
      'module' => 'prodr_Product_Driver_Stock',
      'type' => 'id',
      'max_size' => '36',
      'require_option' => '0',
      'default_value' => NULL,
      'date_modified' => '2019-06-29 14:23:35',
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
      'from' => '<basepath>/SugarModules/modules/prodr_Product_Driver_Stock/metadata/detailviewdefs.php',
      'to' => 'custom/modules/prodr_Product_Driver_Stock/metadata/detailviewdefs.php',
    ),
    1 => 
    array (
      'from' => '<basepath>/SugarModules/modules/prodr_Product_Driver_Stock/metadata/detailviewdefs.php',
      'to' => 'custom/working/modules/prodr_Product_Driver_Stock/metadata/detailviewdefs.php',
    ),
    2 => 
    array (
      'from' => '<basepath>/SugarModules/modules/prodr_Product_Driver_Stock/metadata/editviewdefs.php',
      'to' => 'custom/modules/prodr_Product_Driver_Stock/metadata/editviewdefs.php',
    ),
    3 => 
    array (
      'from' => '<basepath>/SugarModules/modules/prodr_Product_Driver_Stock/metadata/editviewdefs.php',
      'to' => 'custom/working/modules/prodr_Product_Driver_Stock/metadata/editviewdefs.php',
    ),
    4 => 
    array (
      'from' => '<basepath>/SugarModules/modules/prodr_Product_Driver_Stock/metadata/listviewdefs.php',
      'to' => 'custom/modules/prodr_Product_Driver_Stock/metadata/listviewdefs.php',
    ),
    5 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\prodr_Product_Driver_Stock\\Ext\\Vardefs\\sugarfield_aos_products_id_c.php',
      'to' => 'custom\\Extension\\modules\\prodr_Product_Driver_Stock\\Ext\\Vardefs\\sugarfield_aos_products_id_c.php',
    ),
    6 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\prodr_Product_Driver_Stock\\Ext\\Vardefs\\sugarfield_driver_c.php',
      'to' => 'custom\\Extension\\modules\\prodr_Product_Driver_Stock\\Ext\\Vardefs\\sugarfield_driver_c.php',
    ),
    7 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\prodr_Product_Driver_Stock\\Ext\\Vardefs\\sugarfield_product_c.php',
      'to' => 'custom\\Extension\\modules\\prodr_Product_Driver_Stock\\Ext\\Vardefs\\sugarfield_product_c.php',
    ),
    8 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\prodr_Product_Driver_Stock\\Ext\\Vardefs\\sugarfield_stock_c.php',
      'to' => 'custom\\Extension\\modules\\prodr_Product_Driver_Stock\\Ext\\Vardefs\\sugarfield_stock_c.php',
    ),
    9 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\prodr_Product_Driver_Stock\\Ext\\Vardefs\\sugarfield_user_id_c.php',
      'to' => 'custom\\Extension\\modules\\prodr_Product_Driver_Stock\\Ext\\Vardefs\\sugarfield_user_id_c.php',
    ),
  ),
);