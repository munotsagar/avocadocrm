<?php
/**
 *
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
 *
 * SuiteCRM is an extension to SugarCRM Community Edition developed by SalesAgility Ltd.
 * Copyright (C) 2011 - 2017 SalesAgility Ltd.
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
 * FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
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
 * reasonably feasible for  technical reasons, the Appropriate Legal Notices must
 * display the words  "Powered by SugarCRM" and "Supercharged by SuiteCRM".
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
  'author' => 'khurram',
  'description' => 'avacado route package',
  'icon' => '',
  'is_uninstallable' => true,
  'name' => 'AVrouting',
  'published_date' => '2018-11-20 01:51:51',
  'type' => 'module',
  'version' => 1542678711,
  'remove_tables' => 'prompt',
);


$installdefs = array (
  'id' => 'AVrouting',
  'relationships' => 
  array (
    0 => 
    array (
      'meta_data' => '<basepath>/metadata/fyn_vlzs_fyn_locations_1MetaData.php',
    ),
    1 => 
    array (
      'meta_data' => '<basepath>/metadata/fyn_vlzs_fyn_routes_1MetaData.php',
    ),
  ),
  'language' => 
  array (
    0 => 
    array (
      'from' => '<basepath>/SugarModules/include/language/en_us.AVrouting.php',
      'to_module' => 'application',
      'language' => 'en_us',
    ),
    1 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fyn_locations/language/en_us.lang.php',
      'to_module' => 'fyn_locations',
      'language' => 'en_us',
    ),
    2 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fyn_routes/language/en_us.lang.php',
      'to_module' => 'fyn_routes',
      'language' => 'en_us',
    ),
    3 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fyn_vehicles/language/en_us.lang.php',
      'to_module' => 'fyn_vehicles',
      'language' => 'en_us',
    ),
    4 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fyn_vlzs/language/en_us.lang.php',
      'to_module' => 'fyn_vlzs',
      'language' => 'en_us',
    ),
  ),
  'custom_fields' => 
  array (
    'fyn_locationscity_c' => 
    array (
      'id' => 'fyn_locationscity_c',
      'name' => 'city_c',
      'label' => 'LBL_CITY',
      'comments' => '',
      'help' => '',
      'module' => 'fyn_locations',
      'type' => 'varchar',
      'max_size' => '255',
      'require_option' => '0',
      'default_value' => '',
      'date_modified' => '2018-09-24 08:06:54',
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
    'fyn_locationscounty_c' => 
    array (
      'id' => 'fyn_locationscounty_c',
      'name' => 'county_c',
      'label' => 'LBL_COUNTY',
      'comments' => NULL,
      'help' => NULL,
      'module' => 'fyn_locations',
      'type' => 'varchar',
      'max_size' => '255',
      'require_option' => '0',
      'default_value' => NULL,
      'date_modified' => '2018-10-18 16:41:09',
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
    'fyn_locationslocation_c' => 
    array (
      'id' => 'fyn_locationslocation_c',
      'name' => 'location_c',
      'label' => 'LBL_LOCATION',
      'comments' => NULL,
      'help' => NULL,
      'module' => 'fyn_locations',
      'type' => 'varchar',
      'max_size' => '255',
      'require_option' => '0',
      'default_value' => NULL,
      'date_modified' => '2018-10-19 14:21:44',
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
    'fyn_locationsstate_c' => 
    array (
      'id' => 'fyn_locationsstate_c',
      'name' => 'state_c',
      'label' => 'LBL_STATE',
      'comments' => '',
      'help' => '',
      'module' => 'fyn_locations',
      'type' => 'varchar',
      'max_size' => '255',
      'require_option' => '0',
      'default_value' => '',
      'date_modified' => '2018-10-08 18:36:01',
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
    'fyn_routeszipcode_c' => 
    array (
      'id' => 'fyn_routeszipcode_c',
      'name' => 'zipcode_c',
      'label' => 'LBL_ZIPCODE',
      'comments' => '',
      'help' => '',
      'module' => 'fyn_routes',
      'type' => 'varchar',
      'max_size' => '255',
      'require_option' => '0',
      'default_value' => '',
      'date_modified' => '2018-10-28 14:33:58',
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
    'fyn_vehiclesbalstock_c' => 
    array (
      'id' => 'fyn_vehiclesbalstock_c',
      'name' => 'balstock_c',
      'label' => 'LBL_BALSTOCK',
      'comments' => '',
      'help' => '',
      'module' => 'fyn_vehicles',
      'type' => 'varchar',
      'max_size' => '255',
      'require_option' => '0',
      'default_value' => '',
      'date_modified' => '2018-11-16 07:28:45',
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
    'fyn_vehiclesstockin_c' => 
    array (
      'id' => 'fyn_vehiclesstockin_c',
      'name' => 'stockin_c',
      'label' => 'LBL_STOCKIN',
      'comments' => '',
      'help' => '',
      'module' => 'fyn_vehicles',
      'type' => 'varchar',
      'max_size' => '255',
      'require_option' => '0',
      'default_value' => '',
      'date_modified' => '2018-11-16 07:28:27',
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
    'fyn_vehiclesstockout_c' => 
    array (
      'id' => 'fyn_vehiclesstockout_c',
      'name' => 'stockout_c',
      'label' => 'LBL_STOCKOUT',
      'comments' => '',
      'help' => '',
      'module' => 'fyn_vehicles',
      'type' => 'varchar',
      'max_size' => '255',
      'require_option' => '0',
      'default_value' => '',
      'date_modified' => '2018-11-16 07:28:36',
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
    'fyn_vehiclesvehicle_no_c' => 
    array (
      'id' => 'fyn_vehiclesvehicle_no_c',
      'name' => 'vehicle_no_c',
      'label' => 'LBL_VEHICLE_NO_C',
      'comments' => '',
      'help' => '',
      'module' => 'fyn_vehicles',
      'type' => 'varchar',
      'max_size' => '255',
      'require_option' => '0',
      'default_value' => '',
      'date_modified' => '2018-08-17 14:04:32',
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
    'fyn_vlzsfyn_vehicles_id_c' => 
    array (
      'id' => 'fyn_vlzsfyn_vehicles_id_c',
      'name' => 'fyn_vehicles_id_c',
      'label' => 'LBL_VAN_FYN_VEHICLES_ID',
      'comments' => '',
      'help' => '',
      'module' => 'fyn_vlzs',
      'type' => 'id',
      'max_size' => '36',
      'require_option' => '0',
      'default_value' => NULL,
      'date_modified' => '2018-10-15 19:42:25',
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
    'fyn_vlzsstatus_c' => 
    array (
      'id' => 'fyn_vlzsstatus_c',
      'name' => 'status_c',
      'label' => 'LBL_STATUS_C',
      'comments' => NULL,
      'help' => NULL,
      'module' => 'fyn_vlzs',
      'type' => 'enum',
      'max_size' => '100',
      'require_option' => '1',
      'default_value' => NULL,
      'date_modified' => '2018-09-11 05:55:12',
      'deleted' => '0',
      'audited' => '0',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '1',
      'importable' => 'true',
      'ext1' => 'status_c_list',
      'ext2' => NULL,
      'ext3' => NULL,
      'ext4' => NULL,
    ),
    'fyn_vlzsvan_c' => 
    array (
      'id' => 'fyn_vlzsvan_c',
      'name' => 'van_c',
      'label' => 'LBL_VAN',
      'comments' => '',
      'help' => '',
      'module' => 'fyn_vlzs',
      'type' => 'relate',
      'max_size' => '255',
      'require_option' => '0',
      'default_value' => NULL,
      'date_modified' => '2018-10-15 19:42:25',
      'deleted' => '0',
      'audited' => '0',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '1',
      'importable' => 'true',
      'ext1' => '',
      'ext2' => 'fyn_vehicles',
      'ext3' => 'fyn_vehicles_id_c',
      'ext4' => '',
    ),
    'fyn_vlzszone_c' => 
    array (
      'id' => 'fyn_vlzszone_c',
      'name' => 'zone_c',
      'label' => 'LBL_ZONE_C',
      'comments' => NULL,
      'help' => NULL,
      'module' => 'fyn_vlzs',
      'type' => 'enum',
      'max_size' => '100',
      'require_option' => '1',
      'default_value' => NULL,
      'date_modified' => '2018-09-11 05:55:08',
      'deleted' => '0',
      'audited' => '0',
      'mass_update' => '0',
      'duplicate_merge' => '0',
      'reportable' => '1',
      'importable' => 'true',
      'ext1' => 'zone_c_list',
      'ext2' => NULL,
      'ext3' => NULL,
      'ext4' => NULL,
    ),
  ),
  'copy' => 
  array (
    0 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fyn_locations/metadata/detailviewdefs.php',
      'to' => 'custom/modules/fyn_locations/metadata/detailviewdefs.php',
    ),
    1 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fyn_locations/metadata/detailviewdefs.php',
      'to' => 'custom/working/modules/fyn_locations/metadata/detailviewdefs.php',
    ),
    2 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fyn_locations/metadata/editviewdefs.php',
      'to' => 'custom/modules/fyn_locations/metadata/editviewdefs.php',
    ),
    3 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fyn_locations/metadata/editviewdefs.php',
      'to' => 'custom/working/modules/fyn_locations/metadata/editviewdefs.php',
    ),
    4 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fyn_locations/metadata/listviewdefs.php',
      'to' => 'custom/modules/fyn_locations/metadata/listviewdefs.php',
    ),
    5 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fyn_locations/metadata/popupdefs.php',
      'to' => 'custom/modules/fyn_locations/metadata/popupdefs.php',
    ),
    6 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fyn_locations/metadata/popupdefs.php',
      'to' => 'custom/working/modules/fyn_locations/metadata/popupdefs.php',
    ),
    7 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fyn_locations/metadata/quickcreatedefs.php',
      'to' => 'custom/modules/fyn_locations/metadata/quickcreatedefs.php',
    ),
    8 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fyn_locations/metadata/quickcreatedefs.php',
      'to' => 'custom/working/modules/fyn_locations/metadata/quickcreatedefs.php',
    ),
    9 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fyn_routes/metadata/detailviewdefs.php',
      'to' => 'custom/modules/fyn_routes/metadata/detailviewdefs.php',
    ),
    10 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fyn_routes/metadata/detailviewdefs.php',
      'to' => 'custom/working/modules/fyn_routes/metadata/detailviewdefs.php',
    ),
    11 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fyn_routes/metadata/editviewdefs.php',
      'to' => 'custom/modules/fyn_routes/metadata/editviewdefs.php',
    ),
    12 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fyn_routes/metadata/editviewdefs.php',
      'to' => 'custom/working/modules/fyn_routes/metadata/editviewdefs.php',
    ),
    13 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fyn_routes/metadata/listviewdefs.php',
      'to' => 'custom/modules/fyn_routes/metadata/listviewdefs.php',
    ),
    14 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fyn_vehicles/metadata/detailviewdefs.php',
      'to' => 'custom/modules/fyn_vehicles/metadata/detailviewdefs.php',
    ),
    15 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fyn_vehicles/metadata/detailviewdefs.php',
      'to' => 'custom/working/modules/fyn_vehicles/metadata/detailviewdefs.php',
    ),
    16 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fyn_vehicles/metadata/editviewdefs.php',
      'to' => 'custom/modules/fyn_vehicles/metadata/editviewdefs.php',
    ),
    17 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fyn_vehicles/metadata/editviewdefs.php',
      'to' => 'custom/working/modules/fyn_vehicles/metadata/editviewdefs.php',
    ),
    18 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fyn_vlzs/metadata/detailviewdefs.php',
      'to' => 'custom/modules/fyn_vlzs/metadata/detailviewdefs.php',
    ),
    19 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fyn_vlzs/metadata/detailviewdefs.php',
      'to' => 'custom/working/modules/fyn_vlzs/metadata/detailviewdefs.php',
    ),
    20 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fyn_vlzs/metadata/editviewdefs.php',
      'to' => 'custom/modules/fyn_vlzs/metadata/editviewdefs.php',
    ),
    21 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fyn_vlzs/metadata/editviewdefs.php',
      'to' => 'custom/working/modules/fyn_vlzs/metadata/editviewdefs.php',
    ),
    22 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fyn_vlzs/metadata/listviewdefs.php',
      'to' => 'custom/modules/fyn_vlzs/metadata/listviewdefs.php',
    ),
    23 => 
    array (
      'from' => '<basepath>/Extension/modules/relationships/relationships/fyn_vlzs_fyn_locations_1MetaData.php',
      'to' => 'custom/Extension/modules/relationships/relationships/fyn_vlzs_fyn_locations_1MetaData.php',
    ),
    24 => 
    array (
      'from' => '<basepath>/Extension/modules/relationships/relationships/fyn_vlzs_fyn_routes_1MetaData.php',
      'to' => 'custom/Extension/modules/relationships/relationships/fyn_vlzs_fyn_routes_1MetaData.php',
    ),
    25 => 
    array (
      'from' => '<basepath>/Extension/modules/relationships/vardefs/fyn_vlzs_fyn_routes_1_fyn_routes.php',
      'to' => 'custom/Extension/modules/relationships/vardefs/fyn_vlzs_fyn_routes_1_fyn_routes.php',
    ),
    26 => 
    array (
      'from' => '<basepath>/Extension/modules/relationships/vardefs/fyn_vlzs_fyn_locations_1_fyn_vlzs.php',
      'to' => 'custom/Extension/modules/relationships/vardefs/fyn_vlzs_fyn_locations_1_fyn_vlzs.php',
    ),
    27 => 
    array (
      'from' => '<basepath>/Extension/modules/relationships/vardefs/fyn_vlzs_fyn_locations_1_fyn_locations.php',
      'to' => 'custom/Extension/modules/relationships/vardefs/fyn_vlzs_fyn_locations_1_fyn_locations.php',
    ),
    28 => 
    array (
      'from' => '<basepath>/Extension/modules/relationships/vardefs/fyn_vlzs_fyn_routes_1_fyn_vlzs.php',
      'to' => 'custom/Extension/modules/relationships/vardefs/fyn_vlzs_fyn_routes_1_fyn_vlzs.php',
    ),
    29 => 
    array (
      'from' => '<basepath>/Extension/modules/relationships/layoutdefs/fyn_vlzs_fyn_locations_1_fyn_vlzs.php',
      'to' => 'custom/Extension/modules/relationships/layoutdefs/fyn_vlzs_fyn_locations_1_fyn_vlzs.php',
    ),
    30 => 
    array (
      'from' => '<basepath>/Extension/modules/relationships/layoutdefs/fyn_vlzs_fyn_locations_1_fyn_locations.php',
      'to' => 'custom/Extension/modules/relationships/layoutdefs/fyn_vlzs_fyn_locations_1_fyn_locations.php',
    ),
    31 => 
    array (
      'from' => '<basepath>/Extension/modules/relationships/layoutdefs/fyn_vlzs_fyn_routes_1_fyn_vlzs.php',
      'to' => 'custom/Extension/modules/relationships/layoutdefs/fyn_vlzs_fyn_routes_1_fyn_vlzs.php',
    ),
    32 => 
    array (
      'from' => '<basepath>/Extension/modules/fyn_locations/Ext/Vardefs/sugarfield_state_c.php',
      'to' => 'custom/Extension/modules/fyn_locations/Ext/Vardefs/sugarfield_state_c.php',
    ),
    33 => 
    array (
      'from' => '<basepath>/Extension/modules/fyn_locations/Ext/Vardefs/sugarfield_city_c.php',
      'to' => 'custom/Extension/modules/fyn_locations/Ext/Vardefs/sugarfield_city_c.php',
    ),
    34 => 
    array (
      'from' => '<basepath>/Extension/modules/fyn_locations/Ext/Vardefs/sugarfield_location_c.php',
      'to' => 'custom/Extension/modules/fyn_locations/Ext/Vardefs/sugarfield_location_c.php',
    ),
    35 => 
    array (
      'from' => '<basepath>/Extension/modules/fyn_locations/Ext/Vardefs/sugarfield_county_c.php',
      'to' => 'custom/Extension/modules/fyn_locations/Ext/Vardefs/sugarfield_county_c.php',
    ),
    36 => 
    array (
      'from' => '<basepath>/Extension/modules/fyn_locations/Ext/Vardefs/sugarfield_name.php',
      'to' => 'custom/Extension/modules/fyn_locations/Ext/Vardefs/sugarfield_name.php',
    ),
    37 => 
    array (
      'from' => '<basepath>/Extension/modules/fyn_locations/Ext/Vardefs/fyn_vlzs_fyn_locations_1_fyn_locations.php',
      'to' => 'custom/Extension/modules/fyn_locations/Ext/Vardefs/fyn_vlzs_fyn_locations_1_fyn_locations.php',
    ),
    38 => 
    array (
      'from' => '<basepath>/Extension/modules/fyn_locations/Ext/Language/en_us.customfyn_vlzs_fyn_locations_1.php',
      'to' => 'custom/Extension/modules/fyn_locations/Ext/Language/en_us.customfyn_vlzs_fyn_locations_1.php',
    ),
    39 => 
    array (
      'from' => '<basepath>/Extension/modules/fyn_locations/Ext/Layoutdefs/fyn_vlzs_fyn_locations_1_fyn_locations.php',
      'to' => 'custom/Extension/modules/fyn_locations/Ext/Layoutdefs/fyn_vlzs_fyn_locations_1_fyn_locations.php',
    ),
    40 => 
    array (
      'from' => '<basepath>/Extension/modules/fyn_routes/Ext/Vardefs/fyn_vlzs_fyn_routes_1_fyn_routes.php',
      'to' => 'custom/Extension/modules/fyn_routes/Ext/Vardefs/fyn_vlzs_fyn_routes_1_fyn_routes.php',
    ),
    41 => 
    array (
      'from' => '<basepath>/Extension/modules/fyn_routes/Ext/Vardefs/sugarfield_zipcode_c.php',
      'to' => 'custom/Extension/modules/fyn_routes/Ext/Vardefs/sugarfield_zipcode_c.php',
    ),
    42 => 
    array (
      'from' => '<basepath>/Extension/modules/fyn_routes/Ext/Language/en_us.customfyn_vlzs_fyn_routes_1.php',
      'to' => 'custom/Extension/modules/fyn_routes/Ext/Language/en_us.customfyn_vlzs_fyn_routes_1.php',
    ),
    43 => 
    array (
      'from' => '<basepath>/Extension/modules/fyn_vehicles/Ext/Vardefs/sugarfield_balstock_c.php',
      'to' => 'custom/Extension/modules/fyn_vehicles/Ext/Vardefs/sugarfield_balstock_c.php',
    ),
    44 => 
    array (
      'from' => '<basepath>/Extension/modules/fyn_vehicles/Ext/Vardefs/sugarfield_vehicle_no_c.php',
      'to' => 'custom/Extension/modules/fyn_vehicles/Ext/Vardefs/sugarfield_vehicle_no_c.php',
    ),
    45 => 
    array (
      'from' => '<basepath>/Extension/modules/fyn_vehicles/Ext/Vardefs/sugarfield_name.php',
      'to' => 'custom/Extension/modules/fyn_vehicles/Ext/Vardefs/sugarfield_name.php',
    ),
    46 => 
    array (
      'from' => '<basepath>/Extension/modules/fyn_vehicles/Ext/Vardefs/sugarfield_stockin_c.php',
      'to' => 'custom/Extension/modules/fyn_vehicles/Ext/Vardefs/sugarfield_stockin_c.php',
    ),
    47 => 
    array (
      'from' => '<basepath>/Extension/modules/fyn_vehicles/Ext/Vardefs/sugarfield_stockout_c.php',
      'to' => 'custom/Extension/modules/fyn_vehicles/Ext/Vardefs/sugarfield_stockout_c.php',
    ),
    48 => 
    array (
      'from' => '<basepath>/Extension/modules/fyn_vlzs/Ext/Vardefs/sugarfield_fyn_vehicles_id_c.php',
      'to' => 'custom/Extension/modules/fyn_vlzs/Ext/Vardefs/sugarfield_fyn_vehicles_id_c.php',
    ),
    49 => 
    array (
      'from' => '<basepath>/Extension/modules/fyn_vlzs/Ext/Vardefs/sugarfield_van_c.php',
      'to' => 'custom/Extension/modules/fyn_vlzs/Ext/Vardefs/sugarfield_van_c.php',
    ),
    50 => 
    array (
      'from' => '<basepath>/Extension/modules/fyn_vlzs/Ext/Vardefs/sugarfield_zone_c.php',
      'to' => 'custom/Extension/modules/fyn_vlzs/Ext/Vardefs/sugarfield_zone_c.php',
    ),
    51 => 
    array (
      'from' => '<basepath>/Extension/modules/fyn_vlzs/Ext/Vardefs/fyn_vlzs_fyn_locations_1_fyn_vlzs.php',
      'to' => 'custom/Extension/modules/fyn_vlzs/Ext/Vardefs/fyn_vlzs_fyn_locations_1_fyn_vlzs.php',
    ),
    52 => 
    array (
      'from' => '<basepath>/Extension/modules/fyn_vlzs/Ext/Vardefs/sugarfield_status_c.php',
      'to' => 'custom/Extension/modules/fyn_vlzs/Ext/Vardefs/sugarfield_status_c.php',
    ),
    53 => 
    array (
      'from' => '<basepath>/Extension/modules/fyn_vlzs/Ext/Vardefs/fyn_vlzs_fyn_routes_1_fyn_vlzs.php',
      'to' => 'custom/Extension/modules/fyn_vlzs/Ext/Vardefs/fyn_vlzs_fyn_routes_1_fyn_vlzs.php',
    ),
    54 => 
    array (
      'from' => '<basepath>/Extension/modules/fyn_vlzs/Ext/Language/en_us.customfyn_vlzs_fyn_routes_1.php',
      'to' => 'custom/Extension/modules/fyn_vlzs/Ext/Language/en_us.customfyn_vlzs_fyn_routes_1.php',
    ),
    55 => 
    array (
      'from' => '<basepath>/Extension/modules/fyn_vlzs/Ext/Language/en_us.customfyn_vlzs_fyn_locations_1.php',
      'to' => 'custom/Extension/modules/fyn_vlzs/Ext/Language/en_us.customfyn_vlzs_fyn_locations_1.php',
    ),
    56 => 
    array (
      'from' => '<basepath>/Extension/modules/fyn_vlzs/Ext/Layoutdefs/_overridefyn_vlzs_subpanel_fyn_vlzs_fyn_locations_1.php',
      'to' => 'custom/Extension/modules/fyn_vlzs/Ext/Layoutdefs/_overridefyn_vlzs_subpanel_fyn_vlzs_fyn_locations_1.php',
    ),
    57 => 
    array (
      'from' => '<basepath>/Extension/modules/fyn_vlzs/Ext/Layoutdefs/fyn_vlzs_fyn_locations_1_fyn_vlzs.php',
      'to' => 'custom/Extension/modules/fyn_vlzs/Ext/Layoutdefs/fyn_vlzs_fyn_locations_1_fyn_vlzs.php',
    ),
    58 => 
    array (
      'from' => '<basepath>/Extension/modules/fyn_vlzs/Ext/Layoutdefs/fyn_vlzs_fyn_routes_1_fyn_vlzs.php',
      'to' => 'custom/Extension/modules/fyn_vlzs/Ext/Layoutdefs/fyn_vlzs_fyn_routes_1_fyn_vlzs.php',
    ),
  ),
);