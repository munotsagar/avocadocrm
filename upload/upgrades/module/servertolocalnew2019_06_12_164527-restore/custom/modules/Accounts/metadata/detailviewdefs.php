<?php
$viewdefs ['Accounts'] = 
array (
  'DetailView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          'SEND_CONFIRM_OPT_IN_EMAIL' => 
          array (
            'customCode' => '<input type="submit" class="button hidden" disabled="disabled" title="{$APP.LBL_SEND_CONFIRM_OPT_IN_EMAIL}" onclick="this.form.return_module.value=\'Accounts\'; this.form.return_action.value=\'Accounts\'; this.form.return_id.value=\'{$fields.id.value}\'; this.form.action.value=\'sendConfirmOptInEmail\'; this.form.module.value=\'Accounts\'; this.form.module_tab.value=\'Accounts\';" name="send_confirm_opt_in_email" value="{$APP.LBL_SEND_CONFIRM_OPT_IN_EMAIL}"/>',
            'sugar_html' => 
            array (
              'type' => 'submit',
              'value' => '{$APP.LBL_SEND_CONFIRM_OPT_IN_EMAIL}',
              'htmlOptions' => 
              array (
                'class' => 'button hidden',
                'id' => 'send_confirm_opt_in_email',
                'title' => '{$APP.LBL_SEND_CONFIRM_OPT_IN_EMAIL}',
                'onclick' => 'this.form.return_module.value=\'Accounts\'; this.form.return_action.value=\'DetailView\'; this.form.return_id.value=\'{$fields.id.value}\'; this.form.action.value=\'sendConfirmOptInEmail\'; this.form.module.value=\'Accounts\'; this.form.module_tab.value=\'Accounts\';',
                'name' => 'send_confirm_opt_in_email',
                'disabled' => true,
              ),
            ),
          ),
          0 => 'EDIT',
          1 => 'DUPLICATE',
          2 => 'DELETE',
          3 => 'FIND_DUPLICATES',
          'AOS_GENLET' => 
          array (
            'customCode' => '<input type="button" class="button" onClick="showPopup();" value="{$APP.LBL_PRINT_AS_PDF}">',
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
        'LBL_EDITVIEW_PANEL1' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL2' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL3' => 
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
            'comment' => 'Name of the Company',
            'label' => 'LBL_NAME',
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
          0 => 
          array (
            'name' => 'employees',
            'comment' => 'Number of employees, varchar to accomodate for both number (100) or range (50-100)',
            'label' => 'LBL_EMPLOYEES',
          ),
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
            'comment' => 'The office phone number',
            'label' => 'LBL_PHONE_OFFICE',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'phone_fax',
            'comment' => 'The fax phone number of this company',
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
            'name' => 'gender_c',
            'studio' => 'visible',
            'label' => 'LBL_GENDER',
          ),
          1 => '',
        ),
        8 => 
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
            'comment' => 'Full text of the note',
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
          1 => 
          array (
            'name' => 'account_type',
            'comment' => 'The Company is of this type',
            'label' => 'LBL_TYPE',
          ),
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
          0 => 
          array (
            'name' => 'annual_revenue',
            'comment' => 'Annual revenue for this company',
            'label' => 'LBL_ANNUAL_REVENUE',
          ),
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
            'customCode' => '{$fields.date_entered.value} {$APP.LBL_BY} {$fields.created_by_name.value}',
          ),
          1 => 
          array (
            'name' => 'date_modified',
            'label' => 'LBL_DATE_MODIFIED',
            'customCode' => '{$fields.date_modified.value} {$APP.LBL_BY} {$fields.modified_by_name.value}',
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
      'lbl_editview_panel1' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'card1_c',
            'studio' => 'visible',
            'label' => 'LBL_CARD1',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'owner1_c',
            'label' => 'LBL_OWNER1',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'card_number1_c',
            'label' => 'LBL_CARD_NUMBER1',
          ),
          1 => 
          array (
            'name' => 'ccid1_c',
            'label' => 'LBL_CCID1',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'month1_c',
            'studio' => 'visible',
            'label' => 'LBL_MONTH1',
          ),
          1 => 
          array (
            'name' => 'year1_c',
            'studio' => 'visible',
            'label' => 'LBL_YEAR1',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'add_notes1_c',
            'label' => 'LBL_ADD_NOTES1',
          ),
          1 => '',
        ),
      ),
      'lbl_editview_panel2' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'card2_c',
            'studio' => 'visible',
            'label' => 'LBL_CARD2',
          ),
          1 => '',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'owner2_c',
            'label' => 'LBL_OWNER2',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'card_number2_c',
            'label' => 'LBL_CARD_NUMBER2',
          ),
          1 => 
          array (
            'name' => 'ccid2_c',
            'label' => 'LBL_CCID2',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'month2_c',
            'studio' => 'visible',
            'label' => 'LBL_MONTH2',
          ),
          1 => 
          array (
            'name' => 'year2_c',
            'studio' => 'visible',
            'label' => 'LBL_YEAR2',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'add_notes2_c',
            'label' => 'LBL_ADD_NOTES2',
          ),
          1 => '',
        ),
      ),
      'lbl_editview_panel3' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'card3_c',
            'studio' => 'visible',
            'label' => 'LBL_CARD3',
          ),
          1 => '',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'owner3_c',
            'label' => 'LBL_OWNER3',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'card_number3_c',
            'label' => 'LBL_CARD_NUMBER3',
          ),
          1 => 
          array (
            'name' => 'ccid3_c',
            'label' => 'LBL_CCID3',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'month3_c',
            'studio' => 'visible',
            'label' => 'LBL_MONTH3',
          ),
          1 => 
          array (
            'name' => 'year3_c',
            'studio' => 'visible',
            'label' => 'LBL_YEAR3',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'add_notes3_c',
            'label' => 'LBL_ADD_NOTES3',
          ),
        ),
      ),
    ),
  ),
);
;
?>
