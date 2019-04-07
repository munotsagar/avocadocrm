

<script language="javascript">
    {literal}
    SUGAR.util.doWhen(function () {
        return $("#contentTable").length == 0;
    }, SUGAR.themes.actionMenu);
    {/literal}
</script>
<table cellpadding="0" cellspacing="0" border="0" width="100%" id="">
<tr>
<td class="buttons" align="left" NOWRAP width="80%">
<div class="actionsContainer">
<form action="index.php" method="post" name="DetailView" id="formDetailView">
<input type="hidden" name="module" value="{$module}">
<input type="hidden" name="record" value="{$fields.id.value}">
<input type="hidden" name="return_action">
<input type="hidden" name="return_module">
<input type="hidden" name="return_id">
<input type="hidden" name="module_tab">
<input type="hidden" name="isDuplicate" value="false">
<input type="hidden" name="offset" value="{$offset}">
<input type="hidden" name="action" value="EditView">
<input type="hidden" name="sugar_body_only">
{if !$config.enable_action_menu}
<div class="buttons">
{if $bean->aclAccess("edit")}<input title="{$APP.LBL_EDIT_BUTTON_TITLE}" accessKey="{$APP.LBL_EDIT_BUTTON_KEY}" class="button primary" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='AOS_Invoices'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='EditView';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Edit" id="edit_button" value="{$APP.LBL_EDIT_BUTTON_LABEL}">{/if} 
{if $bean->aclAccess("edit")}<input title="{$APP.LBL_DUPLICATE_BUTTON_TITLE}" accessKey="{$APP.LBL_DUPLICATE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='AOS_Invoices'; _form.return_action.value='DetailView'; _form.isDuplicate.value=true; _form.action.value='EditView'; _form.return_id.value='{$id}';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Duplicate" value="{$APP.LBL_DUPLICATE_BUTTON_LABEL}" id="duplicate_button">{/if} 
{if $bean->aclAccess("delete")}<input title="{$APP.LBL_DELETE_BUTTON_TITLE}" accessKey="{$APP.LBL_DELETE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='AOS_Invoices'; _form.return_action.value='ListView'; _form.action.value='Delete'; if(confirm('{$APP.NTC_DELETE_CONFIRMATION}')) SUGAR.ajaxUI.submitForm(_form); return false;" type="submit" name="Delete" value="{$APP.LBL_DELETE_BUTTON_LABEL}" id="delete_button">{/if} 
{if $bean->aclAccess("edit") && $bean->aclAccess("delete")}<input title="{$APP.LBL_DUP_MERGE}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='AOS_Invoices'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='Step1'; _form.module.value='MergeRecords';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Merge" value="{$APP.LBL_DUP_MERGE}" id="merge_duplicate_button">{/if} 
<input type="button" class="button" onClick="showPopup('pdf');" value="{$MOD.LBL_PRINT_AS_PDF}"/>
<input type="button" class="button" onClick="showPopup('emailpdf');" value="{$MOD.LBL_EMAIL_PDF}"/>
<input type="button" class="button" onClick="showPopup('email');" value="{$MOD.LBL_EMAIL_INVOICE}"/>
{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=AOS_Invoices", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}
</div>                    {/if}
</form>
</div>
</td>
<td align="right" width="20%" class="buttons">{$ADMIN_EDIT}
</td>
</tr>
</table>
{sugar_include include=$includes}
<div class="detail-view">
<div class="mobile-pagination">{$PAGINATION}</div>

<ul class="nav nav-tabs">

{if $config.enable_action_menu and $config.enable_action_menu != false}
<li role="presentation" class="active">
<a id="tab0" data-toggle="tab" class="hidden-xs">
{sugar_translate label='LBL_PANEL_OVERVIEW' module='AOS_Invoices'}
</a>
<a id="xstab0" href="#" class="visible-xs first-tab dropdown-toggle" data-toggle="dropdown">
{sugar_translate label='LBL_PANEL_OVERVIEW' module='AOS_Invoices'}
</a>
</li>


{/if}
{if $config.enable_action_menu and $config.enable_action_menu != false}
<li id="tab-actions" class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">ACTIONS<span class="suitepicon suitepicon-action-caret"></span></a>
<ul class="dropdown-menu">
<li>{if $bean->aclAccess("edit")}<input title="{$APP.LBL_EDIT_BUTTON_TITLE}" accessKey="{$APP.LBL_EDIT_BUTTON_KEY}" class="button primary" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='AOS_Invoices'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='EditView';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Edit" id="edit_button" value="{$APP.LBL_EDIT_BUTTON_LABEL}">{/if} </li>
<li>{if $bean->aclAccess("edit")}<input title="{$APP.LBL_DUPLICATE_BUTTON_TITLE}" accessKey="{$APP.LBL_DUPLICATE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='AOS_Invoices'; _form.return_action.value='DetailView'; _form.isDuplicate.value=true; _form.action.value='EditView'; _form.return_id.value='{$id}';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Duplicate" value="{$APP.LBL_DUPLICATE_BUTTON_LABEL}" id="duplicate_button">{/if} </li>
<li>{if $bean->aclAccess("delete")}<input title="{$APP.LBL_DELETE_BUTTON_TITLE}" accessKey="{$APP.LBL_DELETE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='AOS_Invoices'; _form.return_action.value='ListView'; _form.action.value='Delete'; if(confirm('{$APP.NTC_DELETE_CONFIRMATION}')) SUGAR.ajaxUI.submitForm(_form); return false;" type="submit" name="Delete" value="{$APP.LBL_DELETE_BUTTON_LABEL}" id="delete_button">{/if} </li>
<li>{if $bean->aclAccess("edit") && $bean->aclAccess("delete")}<input title="{$APP.LBL_DUP_MERGE}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='AOS_Invoices'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='Step1'; _form.module.value='MergeRecords';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Merge" value="{$APP.LBL_DUP_MERGE}" id="merge_duplicate_button">{/if} </li>
<li><input type="button" class="button" onClick="showPopup('pdf');" value="{$MOD.LBL_PRINT_AS_PDF}"/></li>
<li><input type="button" class="button" onClick="showPopup('emailpdf');" value="{$MOD.LBL_EMAIL_PDF}"/></li>
<li><input type="button" class="button" onClick="showPopup('email');" value="{$MOD.LBL_EMAIL_INVOICE}"/></li>
<li>{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=AOS_Invoices", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}</li>
</ul>        </li>
<li class="tab-inline-pagination">
{$PAGINATION}
</li>
{/if}
</ul>
<div class="clearfix"></div>

{if $config.enable_action_menu and $config.enable_action_menu != false}

<div class="tab-content">
{else}

<div class="tab-content" style="padding: 0; border: 0;">
{/if}


{if $config.enable_action_menu and $config.enable_action_menu != false}
<div class="tab-pane-NOBOOTSTRAPTOGGLER active fade in" id='tab-content-0'>





<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_INVOICE_NUMBER' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="int" field="number"  >

{if !$fields.number.hidden}
{counter name="panelFieldCount" print=false}

<span class="sugar_field" id="{$fields.number.name}">
{assign var="value" value=$fields.number.value }
{$value}
</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_INVOICE_DATE' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="date" field="invoice_date"  >

{if !$fields.invoice_date.hidden}
{counter name="panelFieldCount" print=false}


{if strlen($fields.invoice_date.value) <= 0}
{assign var="value" value=$fields.invoice_date.default_value }
{else}
{assign var="value" value=$fields.invoice_date.value }
{/if}
<span class="sugar_field" id="{$fields.invoice_date.name}">{$value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_SALES_COMMISSION_USER' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="relate" field="sales_commission_user_c"  >

{if !$fields.sales_commission_user_c.hidden}
{counter name="panelFieldCount" print=false}

<span id="user_id_c" class="sugar_field" data-id-value="{$fields.user_id_c.value}">{$fields.sales_commission_user_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_COMMISSION_AMOUNT' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="int" field="commission_amount_c"  >

{if !$fields.commission_amount_c.hidden}
{counter name="panelFieldCount" print=false}

<span class="sugar_field" id="{$fields.commission_amount_c.name}">
{sugar_number_format precision=0 var=$fields.commission_amount_c.value}
</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_DUE_DATES' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="date" field="due_dates_c"  >

{if !$fields.due_dates_c.hidden}
{counter name="panelFieldCount" print=false}


{if strlen($fields.due_dates_c.value) <= 0}
{assign var="value" value=$fields.due_dates_c.default_value }
{else}
{assign var="value" value=$fields.due_dates_c.value }
{/if}
<span class="sugar_field" id="{$fields.due_dates_c.name}">{$value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">
</div>

<div class="clear"></div>
</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_QUOTE_DATE' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="date" field="quote_date"  >

{if !$fields.quote_date.hidden}
{counter name="panelFieldCount" print=false}


{if strlen($fields.quote_date.value) <= 0}
{assign var="value" value=$fields.quote_date.default_value }
{else}
{assign var="value" value=$fields.quote_date.value }
{/if}
<span class="sugar_field" id="{$fields.quote_date.name}">{$value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ORDERID' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="orderid_c"  >

{if !$fields.orderid_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.orderid_c.value) <= 0}
{assign var="value" value=$fields.orderid_c.default_value }
{else}
{assign var="value" value=$fields.orderid_c.value }
{/if} 
<span class="sugar_field" id="{$fields.orderid_c.name}">{$fields.orderid_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_STATUS' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="enum" field="status"  >

{if !$fields.status.hidden}
{counter name="panelFieldCount" print=false}


{if is_string($fields.status.options)}
<input type="hidden" class="sugar_field" id="{$fields.status.name}" value="{ $fields.status.options }">
{ $fields.status.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.status.name}" value="{ $fields.status.value }">
{ $fields.status.options[$fields.status.value]}
{/if}
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_APPROVAL_STATUS' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="enum" field="approval_status_c"  >

{if !$fields.approval_status_c.hidden}
{counter name="panelFieldCount" print=false}


{if is_string($fields.approval_status_c.options)}
<input type="hidden" class="sugar_field" id="{$fields.approval_status_c.name}" value="{ $fields.approval_status_c.options }">
{ $fields.approval_status_c.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.approval_status_c.name}" value="{ $fields.approval_status_c.value }">
{ $fields.approval_status_c.options[$fields.approval_status_c.value]}
{/if}
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_DESCRIPTION' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="text" field="description"  >

{if !$fields.description.hidden}
{counter name="panelFieldCount" print=false}

<span class="sugar_field" id="{$fields.description.name|escape:'html'|url2html|nl2br}">{$fields.description.value|escape:'html'|escape:'html_entity_decode'|url2html|nl2br}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="relate" field="assigned_user_name"  >

{if !$fields.assigned_user_name.hidden}
{counter name="panelFieldCount" print=false}

<span id="assigned_user_id" class="sugar_field" data-id-value="{$fields.assigned_user_id.value}">{$fields.assigned_user_name.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_BILLING_ADDRESS' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="billing_address_street"  >

{if !$fields.billing_address_street.hidden}
{counter name="panelFieldCount" print=false}

<table border='0' cellpadding='0' cellspacing='0' width='100%'>
<tr>
<td width='99%'>
<input type="hidden" class="sugar_field" id="billing_address_street"
value="{$fields.billing_address_street.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}">
<input type="hidden" class="sugar_field" id="billing_address_city"
value="{$fields.billing_address_city.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}">
<input type="hidden" class="sugar_field" id="billing_address_state"
value="{$fields.billing_address_state.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}">
<input type="hidden" class="sugar_field" id="billing_address_country"
value="{$fields.billing_address_country.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}">
<input type="hidden" class="sugar_field" id="billing_address_postalcode"
value="{$fields.billing_address_postalcode.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}">
{$fields.billing_address_street.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}
<br>
{$fields.billing_address_city.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br} {$fields.billing_address_state.value|escape:'html_entity_decode'|strip_tags|url2html|nl2br}
&nbsp;&nbsp;{$fields.billing_address_postalcode.value|escape:'html_entity_decode'|strip_tags|url2html|nl2br}
<br>
{$fields.billing_address_country.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}
</td>
<td class='dataField' width='1%'>
{$custom_code_billing}
</td>
</tr>
</table>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_SHIPPING_ADDRESS' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="shipping_address_street"  >

{if !$fields.shipping_address_street.hidden}
{counter name="panelFieldCount" print=false}

<table border='0' cellpadding='0' cellspacing='0' width='100%'>
<tr>
<td width='99%'>
<input type="hidden" class="sugar_field" id="shipping_address_street"
value="{$fields.shipping_address_street.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}">
<input type="hidden" class="sugar_field" id="shipping_address_city"
value="{$fields.shipping_address_city.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}">
<input type="hidden" class="sugar_field" id="shipping_address_state"
value="{$fields.shipping_address_state.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}">
<input type="hidden" class="sugar_field" id="shipping_address_country"
value="{$fields.shipping_address_country.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}">
<input type="hidden" class="sugar_field" id="shipping_address_postalcode"
value="{$fields.shipping_address_postalcode.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}">
{$fields.shipping_address_street.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}
<br>
{$fields.shipping_address_city.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br} {$fields.shipping_address_state.value|escape:'html_entity_decode'|strip_tags|url2html|nl2br}
&nbsp;&nbsp;{$fields.shipping_address_postalcode.value|escape:'html_entity_decode'|strip_tags|url2html|nl2br}
<br>
{$fields.shipping_address_country.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}
</td>
<td class='dataField' width='1%'>
{$custom_code_shipping}
</td>
</tr>
</table>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ADDR_STATUS_C' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="enum" field="addr_status_c"  >

{if !$fields.addr_status_c.hidden}
{counter name="panelFieldCount" print=false}


{if is_string($fields.addr_status_c.options)}
<input type="hidden" class="sugar_field" id="{$fields.addr_status_c.name}" value="{ $fields.addr_status_c.options }">
{ $fields.addr_status_c.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.addr_status_c.name}" value="{ $fields.addr_status_c.value }">
{ $fields.addr_status_c.options[$fields.addr_status_c.value]}
{/if}
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_FORMATTED_ADDRESS_C' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="formatted_address_c"  >

{if !$fields.formatted_address_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.formatted_address_c.value) <= 0}
{assign var="value" value=$fields.formatted_address_c.default_value }
{else}
{assign var="value" value=$fields.formatted_address_c.value }
{/if} 
<span class="sugar_field" id="{$fields.formatted_address_c.name}">{$fields.formatted_address_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_FYN_ROUTES_AOS_INVOICES_1_FROM_FYN_ROUTES_TITLE' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="relate" field="fyn_routes_aos_invoices_1_name"  >

{if !$fields.fyn_routes_aos_invoices_1_name.hidden}
{counter name="panelFieldCount" print=false}

{if !empty($fields.fyn_routes_aos_invoices_1fyn_routes_ida.value)}
{capture assign="detail_url"}index.php?module=fyn_routes&action=DetailView&record={$fields.fyn_routes_aos_invoices_1fyn_routes_ida.value}{/capture}
<a href="{sugar_ajax_url url=$detail_url}">{/if}
<span id="fyn_routes_aos_invoices_1fyn_routes_ida" class="sugar_field" data-id-value="{$fields.fyn_routes_aos_invoices_1fyn_routes_ida.value}">{$fields.fyn_routes_aos_invoices_1_name.value}</span>
{if !empty($fields.fyn_routes_aos_invoices_1fyn_routes_ida.value)}</a>{/if}
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_FYN_LOCATIONS_AOS_INVOICES_1_FROM_FYN_LOCATIONS_TITLE' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="relate" field="fyn_locations_aos_invoices_1_name"  >

{if !$fields.fyn_locations_aos_invoices_1_name.hidden}
{counter name="panelFieldCount" print=false}

{if !empty($fields.fyn_locations_aos_invoices_1fyn_locations_ida.value)}
{capture assign="detail_url"}index.php?module=fyn_locations&action=DetailView&record={$fields.fyn_locations_aos_invoices_1fyn_locations_ida.value}{/capture}
<a href="{sugar_ajax_url url=$detail_url}">{/if}
<span id="fyn_locations_aos_invoices_1fyn_locations_ida" class="sugar_field" data-id-value="{$fields.fyn_locations_aos_invoices_1fyn_locations_ida.value}">{$fields.fyn_locations_aos_invoices_1_name.value}</span>
{if !empty($fields.fyn_locations_aos_invoices_1fyn_locations_ida.value)}</a>{/if}
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>
                        </div>
{else}

<div class="tab-pane-NOBOOTSTRAPTOGGLER panel-collapse"></div>
{/if}
</div>

<div class="panel-content">
<div>&nbsp;</div>





{if $config.enable_action_menu and $config.enable_action_menu != false}

{else}

<div class="panel panel-default">
<div class="panel-heading ">
<a class="" role="button" data-toggle="collapse" href="#top-panel--1" aria-expanded="false">
<div class="col-xs-10 col-sm-11 col-md-11">
{sugar_translate label='LBL_PANEL_OVERVIEW' module='AOS_Invoices'}
</div>
</a>
</div>
<div class="panel-body panel-collapse collapse in panelContainer" id="top-panel--1" data-id="LBL_PANEL_OVERVIEW">
<div class="tab-content">
<!-- TAB CONTENT -->





<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_INVOICE_NUMBER' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="int" field="number"  >

{if !$fields.number.hidden}
{counter name="panelFieldCount" print=false}

<span class="sugar_field" id="{$fields.number.name}">
{assign var="value" value=$fields.number.value }
{$value}
</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_INVOICE_DATE' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="date" field="invoice_date"  >

{if !$fields.invoice_date.hidden}
{counter name="panelFieldCount" print=false}


{if strlen($fields.invoice_date.value) <= 0}
{assign var="value" value=$fields.invoice_date.default_value }
{else}
{assign var="value" value=$fields.invoice_date.value }
{/if}
<span class="sugar_field" id="{$fields.invoice_date.name}">{$value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_SALES_COMMISSION_USER' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="relate" field="sales_commission_user_c"  >

{if !$fields.sales_commission_user_c.hidden}
{counter name="panelFieldCount" print=false}

<span id="user_id_c" class="sugar_field" data-id-value="{$fields.user_id_c.value}">{$fields.sales_commission_user_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_COMMISSION_AMOUNT' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="int" field="commission_amount_c"  >

{if !$fields.commission_amount_c.hidden}
{counter name="panelFieldCount" print=false}

<span class="sugar_field" id="{$fields.commission_amount_c.name}">
{sugar_number_format precision=0 var=$fields.commission_amount_c.value}
</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_DUE_DATES' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="date" field="due_dates_c"  >

{if !$fields.due_dates_c.hidden}
{counter name="panelFieldCount" print=false}


{if strlen($fields.due_dates_c.value) <= 0}
{assign var="value" value=$fields.due_dates_c.default_value }
{else}
{assign var="value" value=$fields.due_dates_c.value }
{/if}
<span class="sugar_field" id="{$fields.due_dates_c.name}">{$value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">
</div>

<div class="clear"></div>
</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_QUOTE_DATE' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="date" field="quote_date"  >

{if !$fields.quote_date.hidden}
{counter name="panelFieldCount" print=false}


{if strlen($fields.quote_date.value) <= 0}
{assign var="value" value=$fields.quote_date.default_value }
{else}
{assign var="value" value=$fields.quote_date.value }
{/if}
<span class="sugar_field" id="{$fields.quote_date.name}">{$value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ORDERID' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="orderid_c"  >

{if !$fields.orderid_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.orderid_c.value) <= 0}
{assign var="value" value=$fields.orderid_c.default_value }
{else}
{assign var="value" value=$fields.orderid_c.value }
{/if} 
<span class="sugar_field" id="{$fields.orderid_c.name}">{$fields.orderid_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_STATUS' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="enum" field="status"  >

{if !$fields.status.hidden}
{counter name="panelFieldCount" print=false}


{if is_string($fields.status.options)}
<input type="hidden" class="sugar_field" id="{$fields.status.name}" value="{ $fields.status.options }">
{ $fields.status.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.status.name}" value="{ $fields.status.value }">
{ $fields.status.options[$fields.status.value]}
{/if}
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_APPROVAL_STATUS' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="enum" field="approval_status_c"  >

{if !$fields.approval_status_c.hidden}
{counter name="panelFieldCount" print=false}


{if is_string($fields.approval_status_c.options)}
<input type="hidden" class="sugar_field" id="{$fields.approval_status_c.name}" value="{ $fields.approval_status_c.options }">
{ $fields.approval_status_c.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.approval_status_c.name}" value="{ $fields.approval_status_c.value }">
{ $fields.approval_status_c.options[$fields.approval_status_c.value]}
{/if}
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_DESCRIPTION' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="text" field="description"  >

{if !$fields.description.hidden}
{counter name="panelFieldCount" print=false}

<span class="sugar_field" id="{$fields.description.name|escape:'html'|url2html|nl2br}">{$fields.description.value|escape:'html'|escape:'html_entity_decode'|url2html|nl2br}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="relate" field="assigned_user_name"  >

{if !$fields.assigned_user_name.hidden}
{counter name="panelFieldCount" print=false}

<span id="assigned_user_id" class="sugar_field" data-id-value="{$fields.assigned_user_id.value}">{$fields.assigned_user_name.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_BILLING_ADDRESS' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="billing_address_street"  >

{if !$fields.billing_address_street.hidden}
{counter name="panelFieldCount" print=false}

<table border='0' cellpadding='0' cellspacing='0' width='100%'>
<tr>
<td width='99%'>
<input type="hidden" class="sugar_field" id="billing_address_street"
value="{$fields.billing_address_street.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}">
<input type="hidden" class="sugar_field" id="billing_address_city"
value="{$fields.billing_address_city.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}">
<input type="hidden" class="sugar_field" id="billing_address_state"
value="{$fields.billing_address_state.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}">
<input type="hidden" class="sugar_field" id="billing_address_country"
value="{$fields.billing_address_country.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}">
<input type="hidden" class="sugar_field" id="billing_address_postalcode"
value="{$fields.billing_address_postalcode.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}">
{$fields.billing_address_street.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}
<br>
{$fields.billing_address_city.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br} {$fields.billing_address_state.value|escape:'html_entity_decode'|strip_tags|url2html|nl2br}
&nbsp;&nbsp;{$fields.billing_address_postalcode.value|escape:'html_entity_decode'|strip_tags|url2html|nl2br}
<br>
{$fields.billing_address_country.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}
</td>
<td class='dataField' width='1%'>
{$custom_code_billing}
</td>
</tr>
</table>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_SHIPPING_ADDRESS' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="shipping_address_street"  >

{if !$fields.shipping_address_street.hidden}
{counter name="panelFieldCount" print=false}

<table border='0' cellpadding='0' cellspacing='0' width='100%'>
<tr>
<td width='99%'>
<input type="hidden" class="sugar_field" id="shipping_address_street"
value="{$fields.shipping_address_street.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}">
<input type="hidden" class="sugar_field" id="shipping_address_city"
value="{$fields.shipping_address_city.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}">
<input type="hidden" class="sugar_field" id="shipping_address_state"
value="{$fields.shipping_address_state.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}">
<input type="hidden" class="sugar_field" id="shipping_address_country"
value="{$fields.shipping_address_country.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}">
<input type="hidden" class="sugar_field" id="shipping_address_postalcode"
value="{$fields.shipping_address_postalcode.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}">
{$fields.shipping_address_street.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}
<br>
{$fields.shipping_address_city.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br} {$fields.shipping_address_state.value|escape:'html_entity_decode'|strip_tags|url2html|nl2br}
&nbsp;&nbsp;{$fields.shipping_address_postalcode.value|escape:'html_entity_decode'|strip_tags|url2html|nl2br}
<br>
{$fields.shipping_address_country.value|escape:'html_entity_decode'|escape:'html'|url2html|nl2br}
</td>
<td class='dataField' width='1%'>
{$custom_code_shipping}
</td>
</tr>
</table>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ADDR_STATUS_C' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="enum" field="addr_status_c"  >

{if !$fields.addr_status_c.hidden}
{counter name="panelFieldCount" print=false}


{if is_string($fields.addr_status_c.options)}
<input type="hidden" class="sugar_field" id="{$fields.addr_status_c.name}" value="{ $fields.addr_status_c.options }">
{ $fields.addr_status_c.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.addr_status_c.name}" value="{ $fields.addr_status_c.value }">
{ $fields.addr_status_c.options[$fields.addr_status_c.value]}
{/if}
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_FORMATTED_ADDRESS_C' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="formatted_address_c"  >

{if !$fields.formatted_address_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.formatted_address_c.value) <= 0}
{assign var="value" value=$fields.formatted_address_c.default_value }
{else}
{assign var="value" value=$fields.formatted_address_c.value }
{/if} 
<span class="sugar_field" id="{$fields.formatted_address_c.name}">{$fields.formatted_address_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_FYN_ROUTES_AOS_INVOICES_1_FROM_FYN_ROUTES_TITLE' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="relate" field="fyn_routes_aos_invoices_1_name"  >

{if !$fields.fyn_routes_aos_invoices_1_name.hidden}
{counter name="panelFieldCount" print=false}

{if !empty($fields.fyn_routes_aos_invoices_1fyn_routes_ida.value)}
{capture assign="detail_url"}index.php?module=fyn_routes&action=DetailView&record={$fields.fyn_routes_aos_invoices_1fyn_routes_ida.value}{/capture}
<a href="{sugar_ajax_url url=$detail_url}">{/if}
<span id="fyn_routes_aos_invoices_1fyn_routes_ida" class="sugar_field" data-id-value="{$fields.fyn_routes_aos_invoices_1fyn_routes_ida.value}">{$fields.fyn_routes_aos_invoices_1_name.value}</span>
{if !empty($fields.fyn_routes_aos_invoices_1fyn_routes_ida.value)}</a>{/if}
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_FYN_LOCATIONS_AOS_INVOICES_1_FROM_FYN_LOCATIONS_TITLE' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="relate" field="fyn_locations_aos_invoices_1_name"  >

{if !$fields.fyn_locations_aos_invoices_1_name.hidden}
{counter name="panelFieldCount" print=false}

{if !empty($fields.fyn_locations_aos_invoices_1fyn_locations_ida.value)}
{capture assign="detail_url"}index.php?module=fyn_locations&action=DetailView&record={$fields.fyn_locations_aos_invoices_1fyn_locations_ida.value}{/capture}
<a href="{sugar_ajax_url url=$detail_url}">{/if}
<span id="fyn_locations_aos_invoices_1fyn_locations_ida" class="sugar_field" data-id-value="{$fields.fyn_locations_aos_invoices_1fyn_locations_ida.value}">{$fields.fyn_locations_aos_invoices_1_name.value}</span>
{if !empty($fields.fyn_locations_aos_invoices_1fyn_locations_ida.value)}</a>{/if}
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>
                            </div>
</div>
</div>
{/if}





{if $config.enable_action_menu and $config.enable_action_menu != false}

<div class="panel panel-default">
<div class="panel-heading ">
<a class="" role="button" data-toggle="collapse" href="#top-panel-0" aria-expanded="false">
<div class="col-xs-10 col-sm-11 col-md-11">
{sugar_translate label='LBL_LINE_ITEMS' module='AOS_Invoices'}
</div>
</a>
</div>
<div class="panel-body panel-collapse collapse in panelContainer" id="top-panel-0"  data-id="LBL_LINE_ITEMS">
<div class="tab-content">
<!-- TAB CONTENT -->





<div class="row detail-view-row">



<div class="col-xs-12 col-sm-12 detail-view-row-item">


<div class="col-xs-12 col-sm-2 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_LINE_ITEMS' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-10 detail-view-field " type="function" field="line_items" colspan='3' >

{if !$fields.line_items.hidden}
{counter name="panelFieldCount" print=false}
<span id='line_items_span'>
{$fields.line_items.value}
</span>
{/if}

</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-12 detail-view-row-item">


<div class="col-xs-12 col-sm-2 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_TOTAL_AMT' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="currency" field="total_amt" colspan='3' >

{if !$fields.total_amt.hidden}
{counter name="panelFieldCount" print=false}

<span id='{$fields.total_amt.name}'>
{sugar_number_format var=$fields.total_amt.value }
</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-12 detail-view-row-item">


<div class="col-xs-12 col-sm-2 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_SHIPPING_AMOUNT' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="currency" field="shipping_amount" colspan='3' >

{if !$fields.shipping_amount.hidden}
{counter name="panelFieldCount" print=false}

<span id='{$fields.shipping_amount.name}'>
{sugar_number_format var=$fields.shipping_amount.value }
</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-12 detail-view-row-item">


<div class="col-xs-12 col-sm-2 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_DISCOUNT_AMOUNT' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="currency" field="discount_amount" colspan='3' >

{if !$fields.discount_amount.hidden}
{counter name="panelFieldCount" print=false}

<span id='{$fields.discount_amount.name}'>
{sugar_number_format var=$fields.discount_amount.value }
</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-12 detail-view-row-item">


<div class="col-xs-12 col-sm-2 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_TAX_AMOUNT' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="currency" field="tax_amount" colspan='3' >

{if !$fields.tax_amount.hidden}
{counter name="panelFieldCount" print=false}

<span id='{$fields.tax_amount.name}'>
{sugar_number_format var=$fields.tax_amount.value }
</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-12 detail-view-row-item">


<div class="col-xs-12 col-sm-2 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_SUBTOTAL_AMOUNT' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="currency" field="subtotal_amount" colspan='3' >

{if !$fields.subtotal_amount.hidden}
{counter name="panelFieldCount" print=false}

<span id='{$fields.subtotal_amount.name}'>
{sugar_number_format var=$fields.subtotal_amount.value }
</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-12 detail-view-row-item">


<div class="col-xs-12 col-sm-2 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_GRAND_TOTAL' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="currency" field="total_amount" colspan='3' >

{if !$fields.total_amount.hidden}
{counter name="panelFieldCount" print=false}

<span id='{$fields.total_amount.name}'>
{sugar_number_format var=$fields.total_amount.value }
</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">
</div>

<div class="clear"></div>
</div>
                                </div>
</div>
</div>
{else}

<div class="panel panel-default">
<div class="panel-heading ">
<a class="" role="button" data-toggle="collapse" href="#top-panel-0" aria-expanded="false">
<div class="col-xs-10 col-sm-11 col-md-11">
{sugar_translate label='LBL_LINE_ITEMS' module='AOS_Invoices'}
</div>
</a>
</div>
<div class="panel-body panel-collapse collapse in panelContainer" id="top-panel-0" data-id="LBL_LINE_ITEMS">
<div class="tab-content">
<!-- TAB CONTENT -->





<div class="row detail-view-row">



<div class="col-xs-12 col-sm-12 detail-view-row-item">


<div class="col-xs-12 col-sm-2 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_LINE_ITEMS' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-10 detail-view-field " type="function" field="line_items" colspan='3' >

{if !$fields.line_items.hidden}
{counter name="panelFieldCount" print=false}
<span id='line_items_span'>
{$fields.line_items.value}
</span>
{/if}

</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-12 detail-view-row-item">


<div class="col-xs-12 col-sm-2 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_TOTAL_AMT' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="currency" field="total_amt" colspan='3' >

{if !$fields.total_amt.hidden}
{counter name="panelFieldCount" print=false}

<span id='{$fields.total_amt.name}'>
{sugar_number_format var=$fields.total_amt.value }
</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-12 detail-view-row-item">


<div class="col-xs-12 col-sm-2 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_SHIPPING_AMOUNT' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="currency" field="shipping_amount" colspan='3' >

{if !$fields.shipping_amount.hidden}
{counter name="panelFieldCount" print=false}

<span id='{$fields.shipping_amount.name}'>
{sugar_number_format var=$fields.shipping_amount.value }
</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-12 detail-view-row-item">


<div class="col-xs-12 col-sm-2 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_DISCOUNT_AMOUNT' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="currency" field="discount_amount" colspan='3' >

{if !$fields.discount_amount.hidden}
{counter name="panelFieldCount" print=false}

<span id='{$fields.discount_amount.name}'>
{sugar_number_format var=$fields.discount_amount.value }
</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-12 detail-view-row-item">


<div class="col-xs-12 col-sm-2 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_TAX_AMOUNT' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="currency" field="tax_amount" colspan='3' >

{if !$fields.tax_amount.hidden}
{counter name="panelFieldCount" print=false}

<span id='{$fields.tax_amount.name}'>
{sugar_number_format var=$fields.tax_amount.value }
</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-12 detail-view-row-item">


<div class="col-xs-12 col-sm-2 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_SUBTOTAL_AMOUNT' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="currency" field="subtotal_amount" colspan='3' >

{if !$fields.subtotal_amount.hidden}
{counter name="panelFieldCount" print=false}

<span id='{$fields.subtotal_amount.name}'>
{sugar_number_format var=$fields.subtotal_amount.value }
</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-12 detail-view-row-item">


<div class="col-xs-12 col-sm-2 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_GRAND_TOTAL' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="currency" field="total_amount" colspan='3' >

{if !$fields.total_amount.hidden}
{counter name="panelFieldCount" print=false}

<span id='{$fields.total_amount.name}'>
{sugar_number_format var=$fields.total_amount.value }
</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">
</div>

<div class="clear"></div>
</div>
                            </div>
</div>
</div>
{/if}





{if $config.enable_action_menu and $config.enable_action_menu != false}

<div class="panel panel-default">
<div class="panel-heading ">
<a class="" role="button" data-toggle="collapse" href="#top-panel-1" aria-expanded="false">
<div class="col-xs-10 col-sm-11 col-md-11">
{sugar_translate label='LBL_EDITVIEW_PANEL1' module='AOS_Invoices'}
</div>
</a>
</div>
<div class="panel-body panel-collapse collapse in panelContainer" id="top-panel-1"  data-id="LBL_EDITVIEW_PANEL1">
<div class="tab-content">
<!-- TAB CONTENT -->





<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM1' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item1_c"  >

{if !$fields.item1_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item1_c.value) <= 0}
{assign var="value" value=$fields.item1_c.default_value }
{else}
{assign var="value" value=$fields.item1_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item1_c.name}">{$fields.item1_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM2' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item2_c"  >

{if !$fields.item2_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item2_c.value) <= 0}
{assign var="value" value=$fields.item2_c.default_value }
{else}
{assign var="value" value=$fields.item2_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item2_c.name}">{$fields.item2_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM3' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item3_c"  >

{if !$fields.item3_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item3_c.value) <= 0}
{assign var="value" value=$fields.item3_c.default_value }
{else}
{assign var="value" value=$fields.item3_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item3_c.name}">{$fields.item3_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM4' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item4_c"  >

{if !$fields.item4_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item4_c.value) <= 0}
{assign var="value" value=$fields.item4_c.default_value }
{else}
{assign var="value" value=$fields.item4_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item4_c.name}">{$fields.item4_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM5' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item5_c"  >

{if !$fields.item5_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item5_c.value) <= 0}
{assign var="value" value=$fields.item5_c.default_value }
{else}
{assign var="value" value=$fields.item5_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item5_c.name}">{$fields.item5_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM6' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item6_c"  >

{if !$fields.item6_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item6_c.value) <= 0}
{assign var="value" value=$fields.item6_c.default_value }
{else}
{assign var="value" value=$fields.item6_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item6_c.name}">{$fields.item6_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM7' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item7_c"  >

{if !$fields.item7_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item7_c.value) <= 0}
{assign var="value" value=$fields.item7_c.default_value }
{else}
{assign var="value" value=$fields.item7_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item7_c.name}">{$fields.item7_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM8' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item8_c"  >

{if !$fields.item8_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item8_c.value) <= 0}
{assign var="value" value=$fields.item8_c.default_value }
{else}
{assign var="value" value=$fields.item8_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item8_c.name}">{$fields.item8_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM9' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item9_c"  >

{if !$fields.item9_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item9_c.value) <= 0}
{assign var="value" value=$fields.item9_c.default_value }
{else}
{assign var="value" value=$fields.item9_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item9_c.name}">{$fields.item9_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM10' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item10_c"  >

{if !$fields.item10_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item10_c.value) <= 0}
{assign var="value" value=$fields.item10_c.default_value }
{else}
{assign var="value" value=$fields.item10_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item10_c.name}">{$fields.item10_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM11' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item11_c"  >

{if !$fields.item11_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item11_c.value) <= 0}
{assign var="value" value=$fields.item11_c.default_value }
{else}
{assign var="value" value=$fields.item11_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item11_c.name}">{$fields.item11_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM12' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item12_c"  >

{if !$fields.item12_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item12_c.value) <= 0}
{assign var="value" value=$fields.item12_c.default_value }
{else}
{assign var="value" value=$fields.item12_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item12_c.name}">{$fields.item12_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM13' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item13_c"  >

{if !$fields.item13_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item13_c.value) <= 0}
{assign var="value" value=$fields.item13_c.default_value }
{else}
{assign var="value" value=$fields.item13_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item13_c.name}">{$fields.item13_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM14' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item14_c"  >

{if !$fields.item14_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item14_c.value) <= 0}
{assign var="value" value=$fields.item14_c.default_value }
{else}
{assign var="value" value=$fields.item14_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item14_c.name}">{$fields.item14_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-12 detail-view-row-item">


<div class="col-xs-12 col-sm-2 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM15' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="varchar" field="item15_c" colspan='3' >

{if !$fields.item15_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item15_c.value) <= 0}
{assign var="value" value=$fields.item15_c.default_value }
{else}
{assign var="value" value=$fields.item15_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item15_c.name}">{$fields.item15_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>
                                </div>
</div>
</div>
{else}

<div class="panel panel-default">
<div class="panel-heading ">
<a class="" role="button" data-toggle="collapse" href="#top-panel-1" aria-expanded="false">
<div class="col-xs-10 col-sm-11 col-md-11">
{sugar_translate label='LBL_EDITVIEW_PANEL1' module='AOS_Invoices'}
</div>
</a>
</div>
<div class="panel-body panel-collapse collapse in panelContainer" id="top-panel-1" data-id="LBL_EDITVIEW_PANEL1">
<div class="tab-content">
<!-- TAB CONTENT -->





<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM1' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item1_c"  >

{if !$fields.item1_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item1_c.value) <= 0}
{assign var="value" value=$fields.item1_c.default_value }
{else}
{assign var="value" value=$fields.item1_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item1_c.name}">{$fields.item1_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM2' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item2_c"  >

{if !$fields.item2_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item2_c.value) <= 0}
{assign var="value" value=$fields.item2_c.default_value }
{else}
{assign var="value" value=$fields.item2_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item2_c.name}">{$fields.item2_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM3' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item3_c"  >

{if !$fields.item3_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item3_c.value) <= 0}
{assign var="value" value=$fields.item3_c.default_value }
{else}
{assign var="value" value=$fields.item3_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item3_c.name}">{$fields.item3_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM4' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item4_c"  >

{if !$fields.item4_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item4_c.value) <= 0}
{assign var="value" value=$fields.item4_c.default_value }
{else}
{assign var="value" value=$fields.item4_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item4_c.name}">{$fields.item4_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM5' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item5_c"  >

{if !$fields.item5_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item5_c.value) <= 0}
{assign var="value" value=$fields.item5_c.default_value }
{else}
{assign var="value" value=$fields.item5_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item5_c.name}">{$fields.item5_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM6' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item6_c"  >

{if !$fields.item6_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item6_c.value) <= 0}
{assign var="value" value=$fields.item6_c.default_value }
{else}
{assign var="value" value=$fields.item6_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item6_c.name}">{$fields.item6_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM7' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item7_c"  >

{if !$fields.item7_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item7_c.value) <= 0}
{assign var="value" value=$fields.item7_c.default_value }
{else}
{assign var="value" value=$fields.item7_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item7_c.name}">{$fields.item7_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM8' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item8_c"  >

{if !$fields.item8_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item8_c.value) <= 0}
{assign var="value" value=$fields.item8_c.default_value }
{else}
{assign var="value" value=$fields.item8_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item8_c.name}">{$fields.item8_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM9' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item9_c"  >

{if !$fields.item9_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item9_c.value) <= 0}
{assign var="value" value=$fields.item9_c.default_value }
{else}
{assign var="value" value=$fields.item9_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item9_c.name}">{$fields.item9_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM10' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item10_c"  >

{if !$fields.item10_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item10_c.value) <= 0}
{assign var="value" value=$fields.item10_c.default_value }
{else}
{assign var="value" value=$fields.item10_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item10_c.name}">{$fields.item10_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM11' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item11_c"  >

{if !$fields.item11_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item11_c.value) <= 0}
{assign var="value" value=$fields.item11_c.default_value }
{else}
{assign var="value" value=$fields.item11_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item11_c.name}">{$fields.item11_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM12' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item12_c"  >

{if !$fields.item12_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item12_c.value) <= 0}
{assign var="value" value=$fields.item12_c.default_value }
{else}
{assign var="value" value=$fields.item12_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item12_c.name}">{$fields.item12_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM13' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item13_c"  >

{if !$fields.item13_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item13_c.value) <= 0}
{assign var="value" value=$fields.item13_c.default_value }
{else}
{assign var="value" value=$fields.item13_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item13_c.name}">{$fields.item13_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM14' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="item14_c"  >

{if !$fields.item14_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item14_c.value) <= 0}
{assign var="value" value=$fields.item14_c.default_value }
{else}
{assign var="value" value=$fields.item14_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item14_c.name}">{$fields.item14_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-12 detail-view-row-item">


<div class="col-xs-12 col-sm-2 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ITEM15' module='AOS_Invoices'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="varchar" field="item15_c" colspan='3' >

{if !$fields.item15_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.item15_c.value) <= 0}
{assign var="value" value=$fields.item15_c.default_value }
{else}
{assign var="value" value=$fields.item15_c.value }
{/if} 
<span class="sugar_field" id="{$fields.item15_c.name}">{$fields.item15_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>
                            </div>
</div>
</div>
{/if}
</div>
</div>

</form>
<script>SUGAR.util.doWhen("document.getElementById('form') != null",
        function(){ldelim}SUGAR.util.buildAccessKeyLabels();{rdelim});
</script>            <script type="text/javascript" src="include/InlineEditing/inlineEditing.js"></script>
<script type="text/javascript" src="modules/Favorites/favorites.js"></script>
{literal}
<script type="text/javascript">

                    var selectTabDetailView = function(tab) {
                        $('#content div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER').hide();
                        $('#content div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER').eq(tab).show().addClass('active').addClass('in');
                    };

                    var selectTabOnError = function(tab) {
                        selectTabDetailView(tab);
                        $('#content ul.nav.nav-tabs > li').removeClass('active');
                        $('#content ul.nav.nav-tabs > li a').css('color', '');

                        $('#content ul.nav.nav-tabs > li').eq(tab).find('a').first().css('color', 'red');
                        $('#content ul.nav.nav-tabs > li').eq(tab).addClass('active');

                    };

                    var selectTabOnErrorInputHandle = function(inputHandle) {
                        var tab = $(inputHandle).closest('.tab-pane-NOBOOTSTRAPTOGGLER').attr('id').match(/^detailpanel_(.*)$/)[1];
                        selectTabOnError(tab);
                    };


                    $(function(){
                        $('#content ul.nav.nav-tabs > li > a[data-toggle="tab"]').click(function(e){
                            if(typeof $(this).parent().find('a').first().attr('id') != 'undefined') {
                                var tab = parseInt($(this).parent().find('a').first().attr('id').match(/^tab(.)*$/)[1]);
                                selectTabDetailView(tab);
                            }
                        });
                    });

                </script>
{/literal}