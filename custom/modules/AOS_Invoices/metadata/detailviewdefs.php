<?php
$module_name = 'AOS_Invoices';
$_object_name = 'aos_invoices';
$viewdefs [$module_name] = 
array (
  'DetailView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 'EDIT',
          1 => 'DUPLICATE',
          2 => 'DELETE',
          3 => 'FIND_DUPLICATES',
          4 => 
          array (
            'customCode' => '<input type="button" class="button" onClick="showPopup(\'pdf\');" value="{$MOD.LBL_PRINT_AS_PDF}">',
          ),
          5 => 
          array (
            'customCode' => '<input type="button" class="button" onClick="showPopup(\'emailpdf\');" value="{$MOD.LBL_EMAIL_PDF}">',
          ),
          6 => 
          array (
            'customCode' => '<input type="button" class="button" onClick="showPopup(\'email\');" value="{$MOD.LBL_EMAIL_INVOICE}">',
          ),
        ),
      ),
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'useTabs' => false,
      'tabDefs' => 
      array (
        'LBL_PANEL_OVERVIEW' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_LINE_ITEMS' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL1' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => true,
    ),
    'panels' => 
    array (
      'LBL_PANEL_OVERVIEW' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'number',
            'label' => 'LBL_INVOICE_NUMBER',
          ),
          1 => 
          array (
            'name' => 'invoice_date',
            'label' => 'LBL_INVOICE_DATE',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'sales_commission_user_c',
            'studio' => 'visible',
            'label' => 'LBL_SALES_COMMISSION_USER',
          ),
          1 => 
          array (
            'name' => 'commission_amount_c',
            'label' => 'LBL_COMMISSION_AMOUNT',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'due_dates_c',
            'label' => 'LBL_DUE_DATES',
          ),
          1 => '',
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'quote_date',
            'label' => 'LBL_QUOTE_DATE',
          ),
          1 => 
          array (
            'name' => 'orderid_c',
            'label' => 'LBL_ORDERID',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'status',
            'label' => 'LBL_STATUS',
          ),
          1 => 
          array (
            'name' => 'approval_status_c',
            'studio' => 'visible',
            'label' => 'LBL_APPROVAL_STATUS',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'description',
            'label' => 'LBL_DESCRIPTION',
          ),
          1 => 
          array (
            'name' => 'assigned_user_name',
            'label' => 'LBL_ASSIGNED_TO_NAME',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'billing_address_street',
            'label' => 'LBL_BILLING_ADDRESS',
            'type' => 'address',
            'displayParams' => 
            array (
              'key' => 'billing',
            ),
          ),
          1 => 
          array (
            'name' => 'shipping_address_street',
            'label' => 'LBL_SHIPPING_ADDRESS',
            'type' => 'address',
            'displayParams' => 
            array (
              'key' => 'shipping',
            ),
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'addr_status_c',
            'studio' => 'visible',
            'label' => 'LBL_ADDR_STATUS_C',
          ),
          1 => 
          array (
            'name' => 'formatted_address_c',
            'label' => 'LBL_FORMATTED_ADDRESS_C',
          ),
        ),
        8 => 
        array (
          0 => 
          array (
            'name' => 'fyn_routes_aos_invoices_1_name',
            'label' => 'LBL_FYN_ROUTES_AOS_INVOICES_1_FROM_FYN_ROUTES_TITLE',
          ),
          1 => 
          array (
            'name' => 'fyn_locations_aos_invoices_1_name',
            'label' => 'LBL_FYN_LOCATIONS_AOS_INVOICES_1_FROM_FYN_LOCATIONS_TITLE',
          ),
        ),
      ),
      'lbl_line_items' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'line_items',
            'label' => 'LBL_LINE_ITEMS',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'total_amt',
            'label' => 'LBL_TOTAL_AMT',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'shipping_amount',
            'label' => 'LBL_SHIPPING_AMOUNT',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'discount_amount',
            'label' => 'LBL_DISCOUNT_AMOUNT',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'tax_amount',
            'label' => 'LBL_TAX_AMOUNT',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'subtotal_amount',
            'label' => 'LBL_SUBTOTAL_AMOUNT',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'total_amount',
            'label' => 'LBL_GRAND_TOTAL',
          ),
        ),
      ),
      'lbl_editview_panel1' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'item1_c',
            'label' => 'LBL_ITEM1',
          ),
          1 => 
          array (
            'name' => 'item2_c',
            'label' => 'LBL_ITEM2',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'item3_c',
            'label' => 'LBL_ITEM3',
          ),
          1 => 
          array (
            'name' => 'item4_c',
            'label' => 'LBL_ITEM4',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'item5_c',
            'label' => 'LBL_ITEM5',
          ),
          1 => 
          array (
            'name' => 'item6_c',
            'label' => 'LBL_ITEM6',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'item7_c',
            'label' => 'LBL_ITEM7',
          ),
          1 => 
          array (
            'name' => 'item8_c',
            'label' => 'LBL_ITEM8',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'item9_c',
            'label' => 'LBL_ITEM9',
          ),
          1 => 
          array (
            'name' => 'item10_c',
            'label' => 'LBL_ITEM10',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'item11_c',
            'label' => 'LBL_ITEM11',
          ),
          1 => 
          array (
            'name' => 'item12_c',
            'label' => 'LBL_ITEM12',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'item13_c',
            'label' => 'LBL_ITEM13',
          ),
          1 => 
          array (
            'name' => 'item14_c',
            'label' => 'LBL_ITEM14',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'item15_c',
            'label' => 'LBL_ITEM15',
          ),
        ),
      ),
    ),
  ),
);
;
?>
