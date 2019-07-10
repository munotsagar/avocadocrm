<?php
if (!defined('sugarEntry') || !sugarEntry) {
    die('Not A Valid Entry Point');
}
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

$dictionary['jjwg_Markers'] = array(
    'table' => 'jjwg_markers',
    'audited' => true,
    'fields' => array(
        'city' =>
            array(
                'required' => false,
                'name' => 'city',
                'vname' => 'LBL_CITY',
                'type' => 'varchar',
                'massupdate' => 0,
                'comments' => '',
                'help' => 'City',
                'importable' => 'true',
                'duplicate_merge' => 'disabled',
                'duplicate_merge_dom_value' => '0',
                'audited' => false,
                'reportable' => true,
                'len' => '255',
                'size' => '20',
            ),
        'state' =>
            array(
                'required' => false,
                'name' => 'state',
                'vname' => 'LBL_STATE',
                'type' => 'varchar',
                'massupdate' => 0,
                'comments' => '',
                'help' => 'State',
                'importable' => 'true',
                'duplicate_merge' => 'disabled',
                'duplicate_merge_dom_value' => '0',
                'audited' => false,
                'reportable' => true,
                'len' => '255',
                'size' => '20',
            ),
        'country' =>
            array(
                'required' => false,
                'name' => 'country',
                'vname' => 'LBL_COUNTRY',
                'type' => 'varchar',
                'massupdate' => 0,
                'comments' => '',
                'help' => 'Country',
                'importable' => 'true',
                'duplicate_merge' => 'disabled',
                'duplicate_merge_dom_value' => '0',
                'audited' => false,
                'reportable' => true,
                'len' => '255',
                'size' => '20',
            ),
        'jjwg_maps_lat' =>
            array(
                'required' => false,
                'name' => 'jjwg_maps_lat',
                'vname' => 'LBL_JJWG_MAPS_LAT',
                'type' => 'float',
                'massupdate' => 0,
                'default' => '0.00000000',
                'comments' => '',
                'help' => 'Latitude',
                'importable' => 'true',
                'duplicate_merge' => 'disabled',
                'duplicate_merge_dom_value' => '0',
                'audited' => false,
                'reportable' => true,
                'len' => '10',
                'size' => '20',
                'precision' => '8',
            ),
        'jjwg_maps_lng' =>
            array(
                'required' => false,
                'name' => 'jjwg_maps_lng',
                'vname' => 'LBL_JJWG_MAPS_LNG',
                'type' => 'float',
                'massupdate' => 0,
                'default' => '0.00000000',
                'comments' => '',
                'help' => 'Longitude',
                'importable' => 'true',
                'duplicate_merge' => 'disabled',
                'duplicate_merge_dom_value' => '0',
                'audited' => false,
                'reportable' => true,
                'len' => '11',
                'size' => '20',
                'precision' => '8',
            ),
        'marker_image' =>
            array(
                'required' => false,
                'name' => 'marker_image',
                'vname' => 'LBL_MARKER_IMAGE',
                'type' => 'enum',
                'massupdate' => '1',
                'default' => 'company',
                'comments' => '',
                'help' => 'Marker Image Type',
                'importable' => 'true',
                'duplicate_merge' => 'disabled',
                'duplicate_merge_dom_value' => '0',
                'audited' => false,
                'reportable' => true,
                'len' => 100,
                'size' => '20',
                'options' => 'marker_image_list',
                'studio' => 'visible',
                'dependency' => false,
            ),
        'jjwg_maps_jjwg_markers' => array(
            'name' => 'jjwg_maps_jjwg_markers',
            'type' => 'link',
            'relationship' => 'jjwg_maps_jjwg_markers',
            'source' => 'non-db',
            'vname' => 'LBL_JJWG_MAPS_JJWG_MARKERS_FROM_JJWG_MAPS_TITLE',
        ),
    ),
    'relationships' => array(),
    'optimistic_locking' => true,
);
if (!class_exists('VardefManager')) {
    require_once('include/SugarObjects/VardefManager.php');
}
VardefManager::createVardef('jjwg_Markers', 'jjwg_Markers', array('basic', 'assignable', 'security_groups'));
