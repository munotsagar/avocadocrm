<?php 
 $GLOBALS["dictionary"]["AOS_Products"]=array (
  'table' => 'aos_products',
  'audited' => true,
  'duplicate_merge' => true,
  'fields' => 
  array (
    'id' => 
    array (
      'name' => 'id',
      'vname' => 'LBL_ID',
      'type' => 'id',
      'required' => true,
      'reportable' => true,
      'comment' => 'Unique identifier',
      'inline_edit' => false,
    ),
    'name' => 
    array (
      'name' => 'name',
      'vname' => 'LBL_NAME',
      'type' => 'name',
      'link' => true,
      'dbType' => 'varchar',
      'len' => 255,
      'unified_search' => true,
      'full_text_search' => 
      array (
        'boost' => 3,
      ),
      'required' => true,
      'importable' => 'required',
      'duplicate_merge' => 'enabled',
      'merge_filter' => 'selected',
    ),
    'date_entered' => 
    array (
      'name' => 'date_entered',
      'vname' => 'LBL_DATE_ENTERED',
      'type' => 'datetime',
      'group' => 'created_by_name',
      'comment' => 'Date record created',
      'enable_range_search' => true,
      'options' => 'date_range_search_dom',
      'inline_edit' => false,
    ),
    'date_modified' => 
    array (
      'name' => 'date_modified',
      'vname' => 'LBL_DATE_MODIFIED',
      'type' => 'datetime',
      'group' => 'modified_by_name',
      'comment' => 'Date record last modified',
      'enable_range_search' => true,
      'options' => 'date_range_search_dom',
      'inline_edit' => false,
    ),
    'modified_user_id' => 
    array (
      'name' => 'modified_user_id',
      'rname' => 'user_name',
      'id_name' => 'modified_user_id',
      'vname' => 'LBL_MODIFIED',
      'type' => 'assigned_user_name',
      'table' => 'users',
      'isnull' => 'false',
      'group' => 'modified_by_name',
      'dbType' => 'id',
      'reportable' => true,
      'comment' => 'User who last modified record',
      'massupdate' => false,
      'inline_edit' => false,
    ),
    'modified_by_name' => 
    array (
      'name' => 'modified_by_name',
      'vname' => 'LBL_MODIFIED_NAME',
      'type' => 'relate',
      'reportable' => false,
      'source' => 'non-db',
      'rname' => 'user_name',
      'table' => 'users',
      'id_name' => 'modified_user_id',
      'module' => 'Users',
      'link' => 'modified_user_link',
      'duplicate_merge' => 'disabled',
      'massupdate' => false,
      'inline_edit' => false,
    ),
    'created_by' => 
    array (
      'name' => 'created_by',
      'rname' => 'user_name',
      'id_name' => 'modified_user_id',
      'vname' => 'LBL_CREATED',
      'type' => 'assigned_user_name',
      'table' => 'users',
      'isnull' => 'false',
      'dbType' => 'id',
      'group' => 'created_by_name',
      'comment' => 'User who created record',
      'massupdate' => false,
      'inline_edit' => false,
    ),
    'created_by_name' => 
    array (
      'name' => 'created_by_name',
      'vname' => 'LBL_CREATED',
      'type' => 'relate',
      'reportable' => false,
      'link' => 'created_by_link',
      'rname' => 'user_name',
      'source' => 'non-db',
      'table' => 'users',
      'id_name' => 'created_by',
      'module' => 'Users',
      'duplicate_merge' => 'disabled',
      'importable' => 'false',
      'massupdate' => false,
      'inline_edit' => false,
    ),
    'description' => 
    array (
      'name' => 'description',
      'vname' => 'LBL_DESCRIPTION',
      'type' => 'text',
      'comment' => 'Full text of the note',
      'rows' => 6,
      'cols' => 80,
    ),
    'deleted' => 
    array (
      'name' => 'deleted',
      'vname' => 'LBL_DELETED',
      'type' => 'bool',
      'default' => '0',
      'reportable' => false,
      'comment' => 'Record deletion indicator',
    ),
    'created_by_link' => 
    array (
      'name' => 'created_by_link',
      'type' => 'link',
      'relationship' => 'aos_products_created_by',
      'vname' => 'LBL_CREATED_USER',
      'link_type' => 'one',
      'module' => 'Users',
      'bean_name' => 'User',
      'source' => 'non-db',
    ),
    'modified_user_link' => 
    array (
      'name' => 'modified_user_link',
      'type' => 'link',
      'relationship' => 'aos_products_modified_user',
      'vname' => 'LBL_MODIFIED_USER',
      'link_type' => 'one',
      'module' => 'Users',
      'bean_name' => 'User',
      'source' => 'non-db',
    ),
    'assigned_user_id' => 
    array (
      'name' => 'assigned_user_id',
      'rname' => 'user_name',
      'id_name' => 'assigned_user_id',
      'vname' => 'LBL_ASSIGNED_TO_ID',
      'group' => 'assigned_user_name',
      'type' => 'relate',
      'table' => 'users',
      'module' => 'Users',
      'reportable' => true,
      'isnull' => 'false',
      'dbType' => 'id',
      'audited' => true,
      'comment' => 'User ID assigned to record',
      'duplicate_merge' => 'disabled',
    ),
    'assigned_user_name' => 
    array (
      'name' => 'assigned_user_name',
      'link' => 'assigned_user_link',
      'vname' => 'LBL_ASSIGNED_TO_NAME',
      'rname' => 'user_name',
      'type' => 'relate',
      'reportable' => false,
      'source' => 'non-db',
      'table' => 'users',
      'id_name' => 'assigned_user_id',
      'module' => 'Users',
      'duplicate_merge' => 'disabled',
    ),
    'assigned_user_link' => 
    array (
      'name' => 'assigned_user_link',
      'type' => 'link',
      'relationship' => 'aos_products_assigned_user',
      'vname' => 'LBL_ASSIGNED_TO_USER',
      'link_type' => 'one',
      'module' => 'Users',
      'bean_name' => 'User',
      'source' => 'non-db',
      'duplicate_merge' => 'enabled',
      'rname' => 'user_name',
      'id_name' => 'assigned_user_id',
      'table' => 'users',
    ),
    'SecurityGroups' => 
    array (
      'name' => 'SecurityGroups',
      'type' => 'link',
      'relationship' => 'securitygroups_aos_products',
      'module' => 'SecurityGroups',
      'bean_name' => 'SecurityGroup',
      'source' => 'non-db',
      'vname' => 'LBL_SECURITYGROUPS',
    ),
    'aos_products_purchases' => 
    array (
      'name' => 'aos_products_purchases',
      'type' => 'link',
      'relationship' => 'aos_products_purchases',
      'source' => 'non-db',
      'module' => 'AOS_Quotes',
      'bean_name' => 'AOS_Quotes',
      'vname' => 'LBL_PRODUCTS_PURCHASES',
    ),
    'maincode' => 
    array (
      'required' => '0',
      'name' => 'maincode',
      'vname' => 'LBL_MAINCODE',
      'type' => 'enum',
      'massupdate' => 0,
      'default' => '',
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => 1,
      'reportable' => true,
      'len' => 100,
      'options' => 'product_code_dom',
      'studio' => 'visible',
      'inline_edit' => true,
      'merge_filter' => 'disabled',
    ),
    'part_number' => 
    array (
      'required' => false,
      'name' => 'part_number',
      'vname' => 'LBL_PART_NUMBER',
      'type' => 'varchar',
      'massupdate' => 0,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => 1,
      'reportable' => true,
      'len' => '25',
      'inline_edit' => true,
      'merge_filter' => 'disabled',
    ),
    'category' => 
    array (
      'required' => false,
      'name' => 'category',
      'vname' => 'LBL_CATEGORY',
      'type' => 'enum',
      'massupdate' => 0,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => 0,
      'reportable' => true,
      'len' => 100,
      'options' => 'product_category_dom',
      'studio' => 'visible',
    ),
    'type' => 
    array (
      'required' => false,
      'name' => 'type',
      'vname' => 'LBL_TYPE',
      'type' => 'enum',
      'massupdate' => 0,
      'default' => '',
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => 1,
      'reportable' => true,
      'len' => 100,
      'options' => 'type_0',
      'studio' => 'visible',
      'inline_edit' => true,
      'merge_filter' => 'disabled',
    ),
    'cost' => 
    array (
      'required' => '0',
      'name' => 'cost',
      'vname' => 'LBL_COST',
      'type' => 'currency',
      'len' => '26,6',
      'massupdate' => 0,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => 1,
      'reportable' => true,
      'enable_range_search' => true,
      'options' => 'numeric_range_search_dom',
    ),
    'cost_usdollar' => 
    array (
      'required' => '0',
      'name' => 'cost_usdollar',
      'vname' => 'LBL_COST_USDOLLAR',
      'type' => 'currency',
      'group' => 'cost',
      'len' => '26,6',
      'massupdate' => 0,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'audited' => true,
      'comment' => '',
      'studio' => 
      array (
        'editview' => false,
        'detailview' => false,
        'quickcreate' => false,
      ),
    ),
    'currency_id' => 
    array (
      'required' => false,
      'name' => 'currency_id',
      'vname' => 'LBL_CURRENCY',
      'type' => 'id',
      'massupdate' => 0,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => 0,
      'audited' => 0,
      'reportable' => 0,
      'len' => 36,
      'studio' => 'visible',
      'function' => 
      array (
        'name' => 'getCurrencyDropDown',
        'returns' => 'html',
        'onListView' => true,
      ),
    ),
    'price' => 
    array (
      'required' => '1',
      'name' => 'price',
      'vname' => 'LBL_PRICE',
      'type' => 'currency',
      'len' => '26,6',
      'massupdate' => 0,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => 1,
      'reportable' => true,
      'enable_range_search' => true,
      'options' => 'numeric_range_search_dom',
    ),
    'price_usdollar' => 
    array (
      'name' => 'price_usdollar',
      'vname' => 'LBL_PRICE_USDOLLAR',
      'type' => 'currency',
      'disable_num_format' => true,
      'group' => 'price',
      'duplicate_merge' => '0',
      'audited' => true,
      'comment' => '',
      'studio' => 
      array (
        'editview' => false,
        'detailview' => false,
        'quickcreate' => false,
      ),
      'len' => '26,6',
    ),
    'url' => 
    array (
      'required' => false,
      'name' => 'url',
      'vname' => 'LBL_URL',
      'type' => 'varchar',
      'massupdate' => 0,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => 1,
      'reportable' => true,
      'len' => '255',
    ),
    'contact_id' => 
    array (
      'required' => false,
      'name' => 'contact_id',
      'vname' => '',
      'type' => 'id',
      'massupdate' => 0,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => 0,
      'audited' => 0,
      'reportable' => 0,
      'len' => 36,
    ),
    'contact' => 
    array (
      'required' => false,
      'source' => 'non-db',
      'name' => 'contact',
      'vname' => 'LBL_CONTACT',
      'type' => 'relate',
      'massupdate' => 0,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => 1,
      'reportable' => true,
      'len' => '255',
      'id_name' => 'contact_id',
      'ext2' => 'Contacts',
      'module' => 'Contacts',
      'quicksearch' => 'enabled',
      'studio' => 'visible',
    ),
    'product_image' => 
    array (
      'name' => 'product_image',
      'vname' => 'LBL_PRODUCT_IMAGE',
      'type' => 'varchar',
      'len' => '255',
      'reportable' => true,
      'comment' => 'File name associated with the note (attachment)',
    ),
    'file_url' => 
    array (
      'name' => 'file_url',
      'vname' => 'LBL_FILE_URL',
      'type' => 'function',
      'function_require' => 'include/upload_file.php',
      'function_class' => 'UploadFile',
      'function_name' => 'get_url',
      'function_params' => 
      array (
        0 => 'filename',
        1 => 'id',
      ),
      'source' => 'function',
      'reportable' => false,
      'comment' => 'Path to file (can be URL)',
    ),
    'aos_product_category' => 
    array (
      'name' => 'aos_product_category',
      'type' => 'link',
      'relationship' => 'product_categories',
      'source' => 'non-db',
      'link_type' => 'one',
      'module' => 'AOS_Product_Categories',
      'bean_name' => 'AOS_Product_Categories',
      'vname' => 'LBL_AOS_PRODUCT_CATEGORIES',
    ),
    'aos_product_category_name' => 
    array (
      'required' => false,
      'source' => 'non-db',
      'name' => 'aos_product_category_name',
      'vname' => 'LBL_AOS_PRODUCT_CATEGORYS_NAME',
      'type' => 'relate',
      'massupdate' => 0,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => 1,
      'reportable' => true,
      'len' => '255',
      'id_name' => 'aos_product_category_id',
      'ext2' => 'AOS_Product_Categories',
      'module' => 'AOS_Product_Categories',
      'quicksearch' => 'enabled',
      'studio' => 'visible',
    ),
    'aos_product_category_id' => 
    array (
      'name' => 'aos_product_category_id',
      'type' => 'id',
      'reportable' => false,
      'vname' => 'LBL_AOS_PRODUCT_CATEGORY',
    ),
    'aos_products_vs_vehiclestockout_1' => 
    array (
      'name' => 'aos_products_vs_vehiclestockout_1',
      'type' => 'link',
      'relationship' => 'aos_products_vs_vehiclestockout_1',
      'source' => 'non-db',
      'module' => 'vs_vehiclestockOUT',
      'bean_name' => 'vs_vehiclestockOUT',
      'side' => 'right',
      'vname' => 'LBL_AOS_PRODUCTS_VS_VEHICLESTOCKOUT_1_FROM_VS_VEHICLESTOCKOUT_TITLE',
    ),
    'aos_products_vs_vehicle_stockin_1' => 
    array (
      'name' => 'aos_products_vs_vehicle_stockin_1',
      'type' => 'link',
      'relationship' => 'aos_products_vs_vehicle_stockin_1',
      'source' => 'non-db',
      'module' => 'vs_Vehicle_StockIN',
      'bean_name' => 'vs_Vehicle_StockIN',
      'side' => 'right',
      'vname' => 'LBL_AOS_PRODUCTS_VS_VEHICLE_STOCKIN_1_FROM_VS_VEHICLE_STOCKIN_TITLE',
    ),
    'balance_c' => 
    array (
      'inline_edit' => '1',
      'labelValue' => 'Balance Stock',
      'required' => false,
      'source' => 'custom_fields',
      'name' => 'balance_c',
      'vname' => 'LBL_BALANCE',
      'type' => 'varchar',
      'massupdate' => '0',
      'default' => '',
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '255',
      'size' => '20',
      'id' => 'AOS_Productsbalance_c',
      'custom_module' => 'AOS_Products',
    ),
    'truck_c' => 
    array (
      'inline_edit' => '1',
      'labelValue' => 'Truck',
      'required' => false,
      'source' => 'custom_fields',
      'name' => 'truck_c',
      'vname' => 'LBL_TRUCK',
      'type' => 'enum',
      'massupdate' => '0',
      'default' => NULL,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => 100,
      'size' => '20',
      'options' => 'truck_list',
      'studio' => 'visible',
      'dependency' => false,
      'id' => 'AOS_Productstruck_c',
      'custom_module' => 'AOS_Products',
    ),
    'opencartbalancestock_c' => 
    array (
      'inline_edit' => '1',
      'labelValue' => 'Opencart Balance Stock',
      'required' => false,
      'source' => 'custom_fields',
      'name' => 'opencartbalancestock_c',
      'vname' => 'LBL_OPENCARTBALANCESTOCK',
      'type' => 'int',
      'massupdate' => '0',
      'default' => '',
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '255',
      'size' => '20',
      'enable_range_search' => false,
      'disable_num_format' => '',
      'min' => false,
      'max' => false,
      'id' => 'AOS_Productsopencartbalancestock_c',
      'custom_module' => 'AOS_Products',
    ),
    'stagging_inventory_c' => 
    array (
      'inline_edit' => '1',
      'options' => 'numeric_range_search_dom',
      'labelValue' => 'Stagging Inventory',
      'enable_range_search' => '1',
      'required' => false,
      'source' => 'custom_fields',
      'name' => 'stagging_inventory_c',
      'vname' => 'LBL_STAGGING_INVENTORY',
      'type' => 'int',
      'massupdate' => '0',
      'default' => '',
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '255',
      'size' => '20',
      'disable_num_format' => '',
      'min' => false,
      'max' => false,
      'id' => 'AOS_Productsstagging_inventory_c',
      'custom_module' => 'AOS_Products',
    ),
    'product_model_code_c' => 
    array (
      'inline_edit' => '1',
      'labelValue' => 'Product Model Code',
      'required' => false,
      'source' => 'custom_fields',
      'name' => 'product_model_code_c',
      'vname' => 'LBL_PRODUCT_MODEL_CODE',
      'type' => 'varchar',
      'massupdate' => '0',
      'default' => '',
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '255',
      'size' => '20',
      'id' => 'AOS_Productsproduct_model_code_c',
      'custom_module' => 'AOS_Products',
    ),
    'aos_products_fyn_stock_out_1' => 
    array (
      'name' => 'aos_products_fyn_stock_out_1',
      'type' => 'link',
      'relationship' => 'aos_products_fyn_stock_out_1',
      'source' => 'non-db',
      'module' => 'fyn_Stock_out',
      'bean_name' => 'fyn_Stock_out',
      'side' => 'right',
      'vname' => 'LBL_AOS_PRODUCTS_FYN_STOCK_OUT_1_FROM_FYN_STOCK_OUT_TITLE',
    ),
    'stockin_c' => 
    array (
      'inline_edit' => '1',
      'labelValue' => 'Stock In',
      'required' => false,
      'source' => 'custom_fields',
      'name' => 'stockin_c',
      'vname' => 'LBL_STOCKIN',
      'type' => 'varchar',
      'massupdate' => '0',
      'default' => '',
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '255',
      'size' => '20',
      'id' => 'AOS_Productsstockin_c',
      'custom_module' => 'AOS_Products',
    ),
    'aos_products_fyn_stock_in_1' => 
    array (
      'name' => 'aos_products_fyn_stock_in_1',
      'type' => 'link',
      'relationship' => 'aos_products_fyn_stock_in_1',
      'source' => 'non-db',
      'module' => 'fyn_Stock_In',
      'bean_name' => 'fyn_Stock_In',
      'side' => 'right',
      'vname' => 'LBL_AOS_PRODUCTS_FYN_STOCK_IN_1_FROM_FYN_STOCK_IN_TITLE',
    ),
    'stockout_c' => 
    array (
      'inline_edit' => '1',
      'labelValue' => 'Stock Out',
      'required' => false,
      'source' => 'custom_fields',
      'name' => 'stockout_c',
      'vname' => 'LBL_STOCKOUT',
      'type' => 'varchar',
      'massupdate' => '0',
      'default' => '',
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '255',
      'size' => '20',
      'id' => 'AOS_Productsstockout_c',
      'custom_module' => 'AOS_Products',
    ),
    'aos_products_fyn_qr_code_boxes_1' => 
    array (
      'name' => 'aos_products_fyn_qr_code_boxes_1',
      'type' => 'link',
      'relationship' => 'aos_products_fyn_qr_code_boxes_1',
      'source' => 'non-db',
      'module' => 'fyn_QR_CODE_BOXES',
      'bean_name' => 'fyn_QR_CODE_BOXES',
      'side' => 'right',
      'vname' => 'LBL_AOS_PRODUCTS_FYN_QR_CODE_BOXES_1_FROM_FYN_QR_CODE_BOXES_TITLE',
    ),
  ),
  'relationships' => 
  array (
    'aos_products_modified_user' => 
    array (
      'lhs_module' => 'Users',
      'lhs_table' => 'users',
      'lhs_key' => 'id',
      'rhs_module' => 'AOS_Products',
      'rhs_table' => 'aos_products',
      'rhs_key' => 'modified_user_id',
      'relationship_type' => 'one-to-many',
    ),
    'aos_products_created_by' => 
    array (
      'lhs_module' => 'Users',
      'lhs_table' => 'users',
      'lhs_key' => 'id',
      'rhs_module' => 'AOS_Products',
      'rhs_table' => 'aos_products',
      'rhs_key' => 'created_by',
      'relationship_type' => 'one-to-many',
    ),
    'aos_products_assigned_user' => 
    array (
      'lhs_module' => 'Users',
      'lhs_table' => 'users',
      'lhs_key' => 'id',
      'rhs_module' => 'AOS_Products',
      'rhs_table' => 'aos_products',
      'rhs_key' => 'assigned_user_id',
      'relationship_type' => 'one-to-many',
    ),
    'securitygroups_aos_products' => 
    array (
      'lhs_module' => 'SecurityGroups',
      'lhs_table' => 'securitygroups',
      'lhs_key' => 'id',
      'rhs_module' => 'AOS_Products',
      'rhs_table' => 'aos_products',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'securitygroups_records',
      'join_key_lhs' => 'securitygroup_id',
      'join_key_rhs' => 'record_id',
      'relationship_role_column' => 'module',
      'relationship_role_column_value' => 'AOS_Products',
    ),
    'product_categories' => 
    array (
      'lhs_module' => 'AOS_Product_Categories',
      'lhs_table' => 'aos_product_categories',
      'lhs_key' => 'id',
      'rhs_module' => 'AOS_Products',
      'rhs_table' => 'aos_products',
      'rhs_key' => 'aos_product_category_id',
      'relationship_type' => 'one-to-many',
    ),
  ),
  'optimistic_lock' => true,
  'indices' => 
  array (
    'id' => 
    array (
      'name' => 'aos_productspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
  ),
  'templates' => 
  array (
    'security_groups' => 'security_groups',
    'assignable' => 'assignable',
    'basic' => 'basic',
  ),
  'custom_fields' => true,
);