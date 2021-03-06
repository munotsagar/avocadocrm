<?php
$module_name = 'AOS_Invoices';
$_object_name = 'aos_invoices';
$viewdefs [$module_name] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 'SAVE',
          1 => 'CANCEL',
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
            'customCode' => '{$fields.number.value}',
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
            'name' => 'billing_account',
            'label' => 'LBL_BILLING_ACCOUNT',
            'displayParams' => 
            array (
              'key' => 
              array (
                0 => 'billing',
                1 => 'shipping',
              ),
              'copy' => 
              array (
                0 => 'billing',
                1 => 'shipping',
              ),
              'billingKey' => 'billing',
              'shippingKey' => 'shipping',
            ),
          ),
          1 => 
          array (
            'name' => 'days_overdue_c',
            'label' => 'LBL_DAYS_OVERDUE',
          ),
        ),
        2 => 
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
        3 => 
        array (
          0 => 
          array (
            'name' => 'flat_rate_commission_c',
            'studio' => 'visible',
            'label' => 'LBL_FLAT_RATE_COMMISSION',
          ),
          1 => 
          array (
            'name' => 'percentage_commission_c',
            'studio' => 'visible',
            'label' => 'LBL_PERCENTAGE_COMMISSION',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'due_dates_c',
            'label' => 'LBL_DUE_DATES',
          ),
          1 => 
          array (
            'name' => 'total_commission_amount_c',
            'label' => 'LBL_TOTAL_COMMISSION_AMOUNT',
          ),
        ),
        5 => 
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
        6 => 
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
        7 => 
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
        8 => 
        array (
          0 => 
          array (
            'name' => 'billing_address_street',
            'hideLabel' => true,
            'type' => 'address',
            'displayParams' => 
            array (
              'key' => 'billing',
              'rows' => 2,
              'cols' => 30,
              'maxlength' => 150,
            ),
            'label' => 'LBL_BILLING_ADDRESS_STREET',
          ),
          1 => 
          array (
            'name' => 'shipping_address_street',
            'hideLabel' => true,
            'type' => 'address',
            'displayParams' => 
            array (
              'key' => 'shipping',
              'copy' => 'billing',
              'rows' => 2,
              'cols' => 30,
              'maxlength' => 150,
            ),
            'label' => 'LBL_SHIPPING_ADDRESS_STREET',
          ),
        ),
        9 => 
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
        10 => 
        array (
          0 => 
          array (
            'name' => 'fyn_routes_aos_invoices_1_name',
            'label' => 'LBL_FYN_ROUTES_AOS_INVOICES_1_FROM_FYN_ROUTES_TITLE',
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
            'displayParams' => 
            array (
              'field' => 
              array (
                'onblur' => 'calculateTotal(\'lineItems\');',
              ),
            ),
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
    ),
  ),
);
;
?>
