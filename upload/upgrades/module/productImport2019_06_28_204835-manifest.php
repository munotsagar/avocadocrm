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
  'author' => 'productImport',
  'description' => 'productImport',
  'icon' => '',
  'is_uninstallable' => true,
  'name' => 'productImport',
  'published_date' => '2019-06-28 18:48:30',
  'type' => 'module',
  'version' => 1561747715,
  'remove_tables' => 'prompt',
);


$installdefs = array (
  'id' => 'productImport',
  'relationships' => 
  array (
  ),
  'language' => 
  array (
    0 => 
    array (
      'from' => '<basepath>/SugarModules/include/language/en_us.productImport.php',
      'to_module' => 'application',
      'language' => 'en_us',
    ),
    1 => 
    array (
      'from' => '<basepath>/SugarModules/modules/AOS_Products/language/en_us.lang.php',
      'to_module' => 'AOS_Products',
      'language' => 'en_us',
    ),
  ),
  'custom_fields' => 
  array (
    'AOS_Productsbackorders_count_c' => 
    array (
      'id' => 'AOS_Productsbackorders_count_c',
      'name' => 'backorders_count_c',
      'label' => 'LBL_BACKORDERS_COUNT',
      'comments' => 'Backorders Count',
      'help' => 'Backorders Count',
      'module' => 'AOS_Products',
      'type' => 'int',
      'max_size' => '255',
      'require_option' => '0',
      'default_value' => '0',
      'date_modified' => '2019-06-16 16:29:37',
      'deleted' => '0',
      'audited' => '0',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '1',
      'importable' => 'true',
      'ext1' => NULL,
      'ext2' => NULL,
      'ext3' => NULL,
      'ext4' => NULL,
    ),
    'AOS_Productsbalance_c' => 
    array (
      'id' => 'AOS_Productsbalance_c',
      'name' => 'balance_c',
      'label' => 'LBL_BALANCE',
      'comments' => NULL,
      'help' => NULL,
      'module' => 'AOS_Products',
      'type' => 'varchar',
      'max_size' => '255',
      'require_option' => '0',
      'default_value' => NULL,
      'date_modified' => '2019-06-16 16:29:37',
      'deleted' => '0',
      'audited' => '0',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '1',
      'importable' => 'true',
      'ext1' => NULL,
      'ext2' => NULL,
      'ext3' => NULL,
      'ext4' => NULL,
    ),
    'AOS_Productsdefect_c' => 
    array (
      'id' => 'AOS_Productsdefect_c',
      'name' => 'defect_c',
      'label' => 'LBL_DEFECT',
      'comments' => 'Defect',
      'help' => 'Defect',
      'module' => 'AOS_Products',
      'type' => 'varchar',
      'max_size' => '255',
      'require_option' => '0',
      'default_value' => '0',
      'date_modified' => '2019-06-16 16:29:37',
      'deleted' => '0',
      'audited' => '0',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '1',
      'importable' => 'true',
      'ext1' => NULL,
      'ext2' => NULL,
      'ext3' => NULL,
      'ext4' => NULL,
    ),
    'AOS_Productsdisposable_c' => 
    array (
      'id' => 'AOS_Productsdisposable_c',
      'name' => 'disposable_c',
      'label' => 'LBL_DISPOSABLE',
      'comments' => 'Disposable',
      'help' => 'Disposable',
      'module' => 'AOS_Products',
      'type' => 'varchar',
      'max_size' => '255',
      'require_option' => '0',
      'default_value' => '0',
      'date_modified' => '2019-06-16 16:29:37',
      'deleted' => '0',
      'audited' => '1',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '1',
      'importable' => 'true',
      'ext1' => NULL,
      'ext2' => NULL,
      'ext3' => NULL,
      'ext4' => NULL,
    ),
    'AOS_Productsfor_dailyupdateorder_c' => 
    array (
      'id' => 'AOS_Productsfor_dailyupdateorder_c',
      'name' => 'for_dailyupdateorder_c',
      'label' => 'LBL_FOR_DAILYUPDATEORDER',
      'comments' => NULL,
      'help' => NULL,
      'module' => 'AOS_Products',
      'type' => 'varchar',
      'max_size' => '255',
      'require_option' => '0',
      'default_value' => NULL,
      'date_modified' => '2019-06-16 16:29:37',
      'deleted' => '0',
      'audited' => '0',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '1',
      'importable' => 'true',
      'ext1' => NULL,
      'ext2' => NULL,
      'ext3' => NULL,
      'ext4' => NULL,
    ),
    'AOS_Productsinvoice_stock_c' => 
    array (
      'id' => 'AOS_Productsinvoice_stock_c',
      'name' => 'invoice_stock_c',
      'label' => 'LBL_INVOICE_STOCK',
      'comments' => 'Invoice Stock',
      'help' => 'Invoice Stock',
      'module' => 'AOS_Products',
      'type' => 'varchar',
      'max_size' => '255',
      'require_option' => '0',
      'default_value' => '0',
      'date_modified' => '2019-06-16 16:29:37',
      'deleted' => '0',
      'audited' => '0',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '1',
      'importable' => 'true',
      'ext1' => '',
      'ext2' => '',
      'ext3' => '',
      'ext4' => NULL,
    ),
    'AOS_Productsminimum_quantity_onhand_c' => 
    array (
      'id' => 'AOS_Productsminimum_quantity_onhand_c',
      'name' => 'minimum_quantity_onhand_c',
      'label' => 'LBL_MINIMUM_QUANTITY_ONHAND',
      'comments' => 'Minimum Quantity On Hand',
      'help' => 'Minimum Quantity On Hand',
      'module' => 'AOS_Products',
      'type' => 'int',
      'max_size' => '255',
      'require_option' => '0',
      'default_value' => '0',
      'date_modified' => '2019-06-16 16:29:37',
      'deleted' => '0',
      'audited' => '0',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '1',
      'importable' => 'true',
      'ext1' => NULL,
      'ext2' => NULL,
      'ext3' => NULL,
      'ext4' => NULL,
    ),
    'AOS_Productsopencartbalancestock_c' => 
    array (
      'id' => 'AOS_Productsopencartbalancestock_c',
      'name' => 'opencartbalancestock_c',
      'label' => 'LBL_OPENCARTBALANCESTOCK',
      'comments' => NULL,
      'help' => NULL,
      'module' => 'AOS_Products',
      'type' => 'int',
      'max_size' => '255',
      'require_option' => '0',
      'default_value' => NULL,
      'date_modified' => '2019-06-16 16:29:37',
      'deleted' => '0',
      'audited' => '0',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '1',
      'importable' => 'true',
      'ext1' => NULL,
      'ext2' => NULL,
      'ext3' => NULL,
      'ext4' => NULL,
    ),
    'AOS_Productsorder_update_daily_c' => 
    array (
      'id' => 'AOS_Productsorder_update_daily_c',
      'name' => 'order_update_daily_c',
      'label' => 'LBL_ORDER_UPDATE_DAILY',
      'comments' => NULL,
      'help' => NULL,
      'module' => 'AOS_Products',
      'type' => 'date',
      'max_size' => NULL,
      'require_option' => '0',
      'default_value' => 'now',
      'date_modified' => '2019-06-16 16:29:37',
      'deleted' => '0',
      'audited' => '0',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '1',
      'importable' => 'true',
      'ext1' => NULL,
      'ext2' => NULL,
      'ext3' => NULL,
      'ext4' => NULL,
    ),
    'AOS_Productsproduct_model_code_c' => 
    array (
      'id' => 'AOS_Productsproduct_model_code_c',
      'name' => 'product_model_code_c',
      'label' => 'LBL_PRODUCT_MODEL_CODE',
      'comments' => NULL,
      'help' => NULL,
      'module' => 'AOS_Products',
      'type' => 'varchar',
      'max_size' => '255',
      'require_option' => '0',
      'default_value' => NULL,
      'date_modified' => '2019-06-16 16:29:37',
      'deleted' => '0',
      'audited' => '0',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '1',
      'importable' => 'true',
      'ext1' => NULL,
      'ext2' => NULL,
      'ext3' => NULL,
      'ext4' => NULL,
    ),
    'AOS_Productsproduct_qr_code_c' => 
    array (
      'id' => 'AOS_Productsproduct_qr_code_c',
      'name' => 'product_qr_code_c',
      'label' => 'LBL_PRODUCT_QR_CODE',
      'comments' => 'Product QR Code',
      'help' => 'Product QR Code',
      'module' => 'AOS_Products',
      'type' => 'varchar',
      'max_size' => '255',
      'require_option' => '0',
      'default_value' => '',
      'date_modified' => '2019-06-16 16:29:37',
      'deleted' => '0',
      'audited' => '0',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '1',
      'importable' => 'true',
      'ext1' => '',
      'ext2' => '',
      'ext3' => '',
      'ext4' => NULL,
    ),
    'AOS_Productsreserve_c' => 
    array (
      'id' => 'AOS_Productsreserve_c',
      'name' => 'reserve_c',
      'label' => 'LBL_RESERVE',
      'comments' => 'Reserve',
      'help' => 'Reserve',
      'module' => 'AOS_Products',
      'type' => 'varchar',
      'max_size' => '255',
      'require_option' => '0',
      'default_value' => '0',
      'date_modified' => '2019-06-16 16:29:37',
      'deleted' => '0',
      'audited' => '1',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '1',
      'importable' => 'true',
      'ext1' => NULL,
      'ext2' => NULL,
      'ext3' => NULL,
      'ext4' => NULL,
    ),
    'AOS_Productsstagging_inventory_c' => 
    array (
      'id' => 'AOS_Productsstagging_inventory_c',
      'name' => 'stagging_inventory_c',
      'label' => 'LBL_STAGGING_INVENTORY',
      'comments' => NULL,
      'help' => NULL,
      'module' => 'AOS_Products',
      'type' => 'int',
      'max_size' => '255',
      'require_option' => '0',
      'default_value' => NULL,
      'date_modified' => '2019-06-16 16:29:37',
      'deleted' => '0',
      'audited' => '0',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '1',
      'importable' => 'true',
      'ext1' => NULL,
      'ext2' => NULL,
      'ext3' => NULL,
      'ext4' => NULL,
    ),
    'AOS_Productsstockin_c' => 
    array (
      'id' => 'AOS_Productsstockin_c',
      'name' => 'stockin_c',
      'label' => 'LBL_STOCKIN',
      'comments' => 'Total Products In Hand',
      'help' => 'Total Products In Hand',
      'module' => 'AOS_Products',
      'type' => 'varchar',
      'max_size' => '255',
      'require_option' => '0',
      'default_value' => NULL,
      'date_modified' => '2019-06-16 16:29:37',
      'deleted' => '0',
      'audited' => '0',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '1',
      'importable' => 'true',
      'ext1' => NULL,
      'ext2' => NULL,
      'ext3' => NULL,
      'ext4' => NULL,
    ),
    'AOS_Productsstockout_c' => 
    array (
      'id' => 'AOS_Productsstockout_c',
      'name' => 'stockout_c',
      'label' => 'LBL_STOCKOUT',
      'comments' => NULL,
      'help' => NULL,
      'module' => 'AOS_Products',
      'type' => 'varchar',
      'max_size' => '255',
      'require_option' => '0',
      'default_value' => NULL,
      'date_modified' => '2019-06-16 16:29:37',
      'deleted' => '0',
      'audited' => '0',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '1',
      'importable' => 'true',
      'ext1' => NULL,
      'ext2' => NULL,
      'ext3' => NULL,
      'ext4' => NULL,
    ),
    'AOS_Productsstock_in_from_farm_c' => 
    array (
      'id' => 'AOS_Productsstock_in_from_farm_c',
      'name' => 'stock_in_from_farm_c',
      'label' => 'LBL_STOCK_IN_FROM_FARM',
      'comments' => 'Last Transaction Stock In From Farm',
      'help' => 'Last Transaction Stock In From Farm',
      'module' => 'AOS_Products',
      'type' => 'varchar',
      'max_size' => '255',
      'require_option' => '0',
      'default_value' => NULL,
      'date_modified' => '2019-06-16 16:29:37',
      'deleted' => '0',
      'audited' => '0',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '1',
      'importable' => 'true',
      'ext1' => NULL,
      'ext2' => NULL,
      'ext3' => NULL,
      'ext4' => NULL,
    ),
    'AOS_Productstesttwo_c' => 
    array (
      'id' => 'AOS_Productstesttwo_c',
      'name' => 'testtwo_c',
      'label' => 'LBL_TESTTWO',
      'comments' => 'testtwo',
      'help' => 'testtwo',
      'module' => 'AOS_Products',
      'type' => 'int',
      'max_size' => '255',
      'require_option' => '0',
      'default_value' => '255',
      'date_modified' => '2019-06-16 16:29:37',
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
    'AOS_Productstruck_c' => 
    array (
      'id' => 'AOS_Productstruck_c',
      'name' => 'truck_c',
      'label' => 'LBL_TRUCK',
      'comments' => NULL,
      'help' => NULL,
      'module' => 'AOS_Products',
      'type' => 'enum',
      'max_size' => '100',
      'require_option' => '0',
      'default_value' => NULL,
      'date_modified' => '2019-06-16 16:29:37',
      'deleted' => '0',
      'audited' => '0',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '1',
      'importable' => 'true',
      'ext1' => 'truck_list',
      'ext2' => NULL,
      'ext3' => NULL,
      'ext4' => NULL,
    ),
    'AOS_Productswarehouse_balance_stocks_c' => 
    array (
      'id' => 'AOS_Productswarehouse_balance_stocks_c',
      'name' => 'warehouse_balance_stocks_c',
      'label' => 'LBL_WAREHOUSE_BALANCE_STOCKS',
      'comments' => 'Warehouse Balance Stocks',
      'help' => 'Warehouse Balance Stocks',
      'module' => 'AOS_Products',
      'type' => 'int',
      'max_size' => '255',
      'require_option' => '0',
      'default_value' => '0',
      'date_modified' => '2019-06-16 16:29:37',
      'deleted' => '0',
      'audited' => '0',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '1',
      'importable' => 'true',
      'ext1' => NULL,
      'ext2' => NULL,
      'ext3' => NULL,
      'ext4' => NULL,
    ),
  ),
  'copy' => 
  array (
    0 => 
    array (
      'from' => '<basepath>/SugarModules/modules/AOS_Products/metadata/SearchFields.php',
      'to' => 'custom/modules/AOS_Products/metadata/SearchFields.php',
    ),
    1 => 
    array (
      'from' => '<basepath>/SugarModules/modules/AOS_Products/metadata/SearchFields.php',
      'to' => 'custom/working/modules/AOS_Products/metadata/SearchFields.php',
    ),
    2 => 
    array (
      'from' => '<basepath>/SugarModules/modules/AOS_Products/metadata/detailviewdefs.php',
      'to' => 'custom/modules/AOS_Products/metadata/detailviewdefs.php',
    ),
    3 => 
    array (
      'from' => '<basepath>/SugarModules/modules/AOS_Products/metadata/detailviewdefs.php',
      'to' => 'custom/working/modules/AOS_Products/metadata/detailviewdefs.php',
    ),
    4 => 
    array (
      'from' => '<basepath>/SugarModules/modules/AOS_Products/metadata/editviewdefs.php',
      'to' => 'custom/modules/AOS_Products/metadata/editviewdefs.php',
    ),
    5 => 
    array (
      'from' => '<basepath>/SugarModules/modules/AOS_Products/metadata/editviewdefs.php',
      'to' => 'custom/working/modules/AOS_Products/metadata/editviewdefs.php',
    ),
    6 => 
    array (
      'from' => '<basepath>/SugarModules/modules/AOS_Products/metadata/listviewdefs.php',
      'to' => 'custom/modules/AOS_Products/metadata/listviewdefs.php',
    ),
    7 => 
    array (
      'from' => '<basepath>/SugarModules/modules/AOS_Products/metadata/popupdefs.php',
      'to' => 'custom/modules/AOS_Products/metadata/popupdefs.php',
    ),
    8 => 
    array (
      'from' => '<basepath>/SugarModules/modules/AOS_Products/metadata/popupdefs.php',
      'to' => 'custom/working/modules/AOS_Products/metadata/popupdefs.php',
    ),
    9 => 
    array (
      'from' => '<basepath>/SugarModules/modules/AOS_Products/metadata/quickcreatedefs.php',
      'to' => 'custom/modules/AOS_Products/metadata/quickcreatedefs.php',
    ),
    10 => 
    array (
      'from' => '<basepath>/SugarModules/modules/AOS_Products/metadata/quickcreatedefs.php',
      'to' => 'custom/working/modules/AOS_Products/metadata/quickcreatedefs.php',
    ),
    11 => 
    array (
      'from' => '<basepath>/SugarModules/modules/AOS_Products/metadata/searchdefs.php',
      'to' => 'custom/modules/AOS_Products/metadata/searchdefs.php',
    ),
    12 => 
    array (
      'from' => '<basepath>/SugarModules/modules/AOS_Products/metadata/searchdefs.php',
      'to' => 'custom/working/modules/AOS_Products/metadata/searchdefs.php',
    ),
    13 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Language\\en_us.29052019.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Language\\en_us.29052019.php',
    ),
    14 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Language\\en_us.dotonlocal.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Language\\en_us.dotonlocal.php',
    ),
    15 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Language\\en_us.FieldsScreen.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Language\\en_us.FieldsScreen.php',
    ),
    16 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Language\\en_us.products_fields_changes.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Language\\en_us.products_fields_changes.php',
    ),
    17 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Language\\en_us.Products_Lable_Changes_19_May_2019.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Language\\en_us.Products_Lable_Changes_19_May_2019.php',
    ),
    18 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Language\\en_us.product_vehicle_stock.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Language\\en_us.product_vehicle_stock.php',
    ),
    19 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Language\\en_us.servertolocalnew.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Language\\en_us.servertolocalnew.php',
    ),
    20 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Language\\en_us.Transfer Inventory Between Locations.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Language\\en_us.Transfer Inventory Between Locations.php',
    ),
    21 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_backorders_count_c.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_backorders_count_c.php',
    ),
    22 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_balance_c.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_balance_c.php',
    ),
    23 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_category.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_category.php',
    ),
    24 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_defect_c.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_defect_c.php',
    ),
    25 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_disposable_c.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_disposable_c.php',
    ),
    26 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_for_dailyupdateorder_c.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_for_dailyupdateorder_c.php',
    ),
    27 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_invoice_stock_c.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_invoice_stock_c.php',
    ),
    28 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_maincode.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_maincode.php',
    ),
    29 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_minimum_quantity_onhand_c.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_minimum_quantity_onhand_c.php',
    ),
    30 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_opencartbalancestock_c.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_opencartbalancestock_c.php',
    ),
    31 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_order_update_daily_c.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_order_update_daily_c.php',
    ),
    32 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_part_number.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_part_number.php',
    ),
    33 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_product_model_code_c.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_product_model_code_c.php',
    ),
    34 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_product_qr_code_c.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_product_qr_code_c.php',
    ),
    35 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_reserve_c.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_reserve_c.php',
    ),
    36 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_stagging_inventory_c.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_stagging_inventory_c.php',
    ),
    37 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_stockin_c.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_stockin_c.php',
    ),
    38 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_stockout_c.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_stockout_c.php',
    ),
    39 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_stock_in_from_farm_c.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_stock_in_from_farm_c.php',
    ),
    40 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_testtwo_c.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_testtwo_c.php',
    ),
    41 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_truck_c.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_truck_c.php',
    ),
    42 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_type.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_type.php',
    ),
    43 => 
    array (
      'from' => '<basepath>\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_warehouse_balance_stocks_c.php',
      'to' => 'custom\\Extension\\modules\\AOS_Products\\Ext\\Vardefs\\sugarfield_warehouse_balance_stocks_c.php',
    ),
  ),
);