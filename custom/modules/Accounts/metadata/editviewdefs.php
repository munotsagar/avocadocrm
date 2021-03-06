<?php
$viewdefs ['Accounts'] = 
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
      'includes' => 
      array (
        0 => 
        array (
          'file' => 'modules/Accounts/Account.js',
        ),
      ),
      'useTabs' => true,
      'tabDefs' => 
      array (
        'LBL_ACCOUNT_INFORMATION' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_PANEL_ADVANCED' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => true,
    ),
    'panels' => 
    array (
      'lbl_account_information' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'name',
            'label' => 'LBL_NAME',
            'displayParams' => 
            array (
              'required' => true,
            ),
          ),
          1 => 
          array (
            'name' => 'photo_c',
            'studio' => 'visible',
            'label' => 'LBL_PHOTO',
          ),
        ),
        1 => 
        array (
          0 => 'employees',
          1 => 
          array (
            'name' => 'typeofbusiness_c',
            'studio' => 'visible',
            'label' => 'LBL_TYPEOFBUSINESS',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'sic_code',
            'comment' => 'SIC code of the account',
            'label' => 'LBL_SIC_CODE',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'phone_alternate',
            'comment' => 'An alternate phone number',
            'label' => 'LBL_PHONE_ALT',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'phone_office',
            'label' => 'LBL_PHONE_OFFICE',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'phone_fax',
            'label' => 'LBL_FAX',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'customerdiscount_c',
            'label' => 'LBL_CUSTOMERDISCOUNT',
          ),
          1 => 
          array (
            'name' => 'customerrating_c',
            'studio' => 'visible',
            'label' => 'LBL_CUSTOMERRATING',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'terms_c',
            'studio' => 'visible',
            'label' => 'LBL_TERMS',
          ),
          1 => 
          array (
            'name' => 'credit_line_c',
            'label' => 'LBL_CREDIT_LINE',
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
          ),
        ),
        9 => 
        array (
          0 => 
          array (
            'name' => 'ownership',
            'comment' => '',
            'label' => 'LBL_OWNERSHIP',
          ),
          1 => '',
        ),
        10 => 
        array (
          0 => 
          array (
            'name' => 'email1',
            'studio' => 'false',
            'label' => 'LBL_EMAIL',
          ),
          1 => 
          array (
            'name' => 'assigned_user_name',
            'label' => 'LBL_ASSIGNED_TO',
          ),
        ),
        11 => 
        array (
          0 => 
          array (
            'name' => 'description',
            'label' => 'LBL_DESCRIPTION',
          ),
        ),
      ),
      'LBL_PANEL_ADVANCED' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'ticker_symbol',
            'comment' => 'The stock trading (ticker) symbol for the company',
            'label' => 'LBL_TICKER_SYMBOL',
          ),
          1 => 'account_type',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'rating',
            'comment' => 'An arbitrary rating for this company for use in comparisons with others',
            'label' => 'LBL_RATING',
          ),
          1 => 
          array (
            'name' => 'taxexempted_c',
            'studio' => 'visible',
            'label' => 'LBL_TAXEXEMPTED',
          ),
        ),
        2 => 
        array (
          0 => 'annual_revenue',
          1 => 
          array (
            'name' => 'comment_c',
            'label' => 'LBL_COMMENT',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'date_entered',
            'comment' => 'Date record created',
            'label' => 'LBL_DATE_ENTERED',
          ),
          1 => 
          array (
            'name' => 'date_modified',
            'comment' => 'Date record last modified',
            'label' => 'LBL_DATE_MODIFIED',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'reference_1_c',
            'label' => 'LBL_REFERENCE_1',
          ),
          1 => '',
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'reference_2_c',
            'label' => 'LBL_REFERENCE_2',
          ),
          1 => '',
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'reference_3_c',
            'label' => 'LBL_REFERENCE_3',
          ),
          1 => '',
        ),
      ),
    ),
  ),
);
;
?>
