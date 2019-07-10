<?php
// created: 2019-06-06 20:29:46
$subpanel_layout['list_fields'] = array (
  'qr_image' => 
  array (
    'type' => 'image',
    'studio' => 'visible',
    'width' => '10%',
    'vname' => 'LBL_QR_IMAGE',
    'default' => true,
  ),
  'date_entered' => 
  array (
    'type' => 'datetime',
    'vname' => 'LBL_DATE_ENTERED',
    'width' => '10%',
    'default' => true,
  ),
  'name' => 
  array (
    'vname' => 'LBL_NAME',
    'widget_class' => 'SubPanelDetailViewLink',
    'width' => '45%',
    'default' => true,
  ),
  'date_modified' => 
  array (
    'vname' => 'LBL_DATE_MODIFIED',
    'width' => '45%',
    'default' => true,
  ),
  'edit_button' => 
  array (
    'vname' => 'LBL_EDIT_BUTTON',
    'widget_class' => 'SubPanelEditButton',
    'module' => 'fyn_QR_CODE_BOXES',
    'width' => '4%',
    'default' => true,
  ),
  'created_by_name' => 
  array (
    'type' => 'relate',
    'link' => true,
    'vname' => 'LBL_CREATED',
    'id' => 'CREATED_BY',
    'width' => '10%',
    'default' => true,
    'widget_class' => 'SubPanelDetailViewLink',
    'target_module' => 'Users',
    'target_record_key' => 'created_by',
  ),
  'truck_info' => 
  array (
    'type' => 'varchar',
    'vname' => 'LBL_TRUCK_INFO',
    'width' => '10%',
    'default' => true,
  ),
  'aos_products_fyn_qr_code_boxes_1_name' => 
  array (
    'type' => 'relate',
    'link' => true,
    'vname' => 'LBL_AOS_PRODUCTS_FYN_QR_CODE_BOXES_1_FROM_AOS_PRODUCTS_TITLE',
    'id' => 'AOS_PRODUCTS_FYN_QR_CODE_BOXES_1AOS_PRODUCTS_IDA',
    'width' => '10%',
    'default' => true,
    'widget_class' => 'SubPanelDetailViewLink',
    'target_module' => 'AOS_Products',
    'target_record_key' => 'aos_products_fyn_qr_code_boxes_1aos_products_ida',
  ),
  'remove_button' => 
  array (
    'vname' => 'LBL_REMOVE',
    'widget_class' => 'SubPanelRemoveButton',
    'module' => 'fyn_QR_CODE_BOXES',
    'width' => '5%',
    'default' => true,
  ),
);