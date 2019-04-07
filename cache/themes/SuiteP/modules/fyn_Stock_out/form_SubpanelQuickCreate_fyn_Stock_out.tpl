

<script>
    {literal}
    $(document).ready(function(){
	    $("ul.clickMenu").each(function(index, node){
	        $(node).sugarActionMenu();
	    });

        if($('.edit-view-pagination').children().length == 0) $('.saveAndContinue').remove();
    });
    {/literal}
</script>
<div class="clear"></div>
<form action="index.php" method="POST" name="{$form_name}" id="{$form_id}" {$enctype}>
<div class="edit-view-pagination-mobile-container">
<div class="edit-view-pagination edit-view-mobile-pagination">
</div>
</div>
<table width="100%" cellpadding="0" cellspacing="0" border="0" class="dcQuickEdit">
<tr>
<td class="buttons">
<input type="hidden" name="module" value="{$module}">
{if isset($smarty.request.isDuplicate) && $smarty.request.isDuplicate eq "true"}
<input type="hidden" name="record" value="">
<input type="hidden" name="duplicateSave" value="true">
<input type="hidden" name="duplicateId" value="{$fields.id.value}">
{else}
<input type="hidden" name="record" value="{$fields.id.value}">
{/if}
<input type="hidden" name="isDuplicate" value="false">
<input type="hidden" name="action">
<input type="hidden" name="return_module" value="{$smarty.request.return_module}">
<input type="hidden" name="return_action" value="{$smarty.request.return_action}">
<input type="hidden" name="return_id" value="{$smarty.request.return_id}">
<input type="hidden" name="module_tab"> 
<input type="hidden" name="contact_role">
{if (!empty($smarty.request.return_module) || !empty($smarty.request.relate_to)) && !(isset($smarty.request.isDuplicate) && $smarty.request.isDuplicate eq "true")}
<input type="hidden" name="relate_to" value="{if $smarty.request.return_relationship}{$smarty.request.return_relationship}{elseif $smarty.request.relate_to && empty($smarty.request.from_dcmenu)}{$smarty.request.relate_to}{elseif empty($isDCForm) && empty($smarty.request.from_dcmenu)}{$smarty.request.return_module}{/if}">
<input type="hidden" name="relate_id" value="{$smarty.request.return_id}">
{/if}
<input type="hidden" name="offset" value="{$offset}">
{assign var='place' value="_HEADER"} <!-- to be used for id for buttons with custom code in def files-->
<div class="buttons">
{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}"  class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_fyn_Stock_out'); disableOnUnloadEditView(); _form.action.value='Save';if(check_form('form_SubpanelQuickCreate_fyn_Stock_out'))return SUGAR.subpanelUtils.inlineSave(_form.id, 'fyn_Stock_out_subpanel_save_button');return false;" type="submit" name="fyn_Stock_out_subpanel_save_button" id="fyn_Stock_out_subpanel_save_button" value="{$APP.LBL_SAVE_BUTTON_LABEL}">{/if} 
<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" class="button" onclick="return SUGAR.subpanelUtils.cancelCreate($(this).attr('id'));return false;" type="submit" name="fyn_Stock_out_subpanel_cancel_button" id="fyn_Stock_out_subpanel_cancel_button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}"> 
<input title="{$APP.LBL_FULL_FORM_BUTTON_TITLE}" class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_fyn_Stock_out'); disableOnUnloadEditView(_form); _form.return_action.value='DetailView'; _form.action.value='EditView'; if(typeof(_form.to_pdf)!='undefined') _form.to_pdf.value='0';" type="submit" name="fyn_Stock_out_subpanel_full_form_button" id="fyn_Stock_out_subpanel_full_form_button" value="{$APP.LBL_FULL_FORM_BUTTON_LABEL}"> <input type="hidden" name="full_form" value="full_form">
{if $showVCRControl}
<button type="button" id="save_and_continue" class="button saveAndContinue" title="{$app_strings.LBL_SAVE_AND_CONTINUE}" onClick="SUGAR.saveAndContinue(this);">
{$APP.LBL_SAVE_AND_CONTINUE}
</button>
{/if}
{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=fyn_Stock_out", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}
</div>
</td>
<td align='right' class="edit-view-pagination-desktop-container">
<div class="edit-view-pagination edit-view-pagination-desktop">
</div>
</td>
</tr>
</table>
{sugar_include include=$includes}
<div id="EditView_tabs">

<ul class="nav nav-tabs">
</ul>
<div class="clearfix"></div>
<div class="tab-content" style="padding: 0; border: 0;">

<div class="tab-pane panel-collapse">&nbsp;</div>
</div>

<div class="panel-content">
<div>&nbsp;</div>




<div class="panel panel-default">
<div class="panel-heading ">
<a class="" role="button" data-toggle="collapse-edit" aria-expanded="false">
<div class="col-xs-10 col-sm-11 col-md-11">
{sugar_translate label='DEFAULT' module='fyn_Stock_out'}
</div>
</a>
</div>
<div class="panel-body panel-collapse collapse in panelContainer" id="detailpanel_-1" data-id="DEFAULT">
<div class="tab-content">
<!-- tab_panel_content.tpl -->
<div class="row edit-view-row">



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_ASSIGNED_TO_NAME">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='fyn_Stock_out'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="assigned_user_name"  >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.assigned_user_name.name}" class="sqsEnabled" tabindex="0" id="{$fields.assigned_user_name.name}" size="" value="{$fields.assigned_user_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.assigned_user_name.id_name}" 
id="{$fields.assigned_user_name.id_name}" 
value="{$fields.assigned_user_id.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.assigned_user_name.name}" id="btn_{$fields.assigned_user_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_SELECT_USERS_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_ACCESSKEY_SELECT_USERS_LABEL"}"
onclick='open_popup(
"{$fields.assigned_user_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"form_SubpanelQuickCreate_fyn_Stock_out","field_to_name_array":{"id":"assigned_user_id","user_name":"assigned_user_name"}}{/literal}, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_{$fields.assigned_user_name.name}" id="btn_clr_{$fields.assigned_user_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_USERS_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.assigned_user_name.name}', '{$fields.assigned_user_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_USERS_LABEL"}" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.assigned_user_name.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_QUANTITY">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_QUANTITY' module='fyn_Stock_out'}{/capture}
{$label|strip_semicolon}:

<span class="required">*</span>
{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="quantity"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.quantity.value) <= 0}
{assign var="value" value=$fields.quantity.default_value }
{else}
{assign var="value" value=$fields.quantity.value }
{/if}  
<input type='text' name='{$fields.quantity.name}' 
id='{$fields.quantity.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_FYN_QR_CODE_BOXES_FYN_STOCK_OUT_1_FROM_FYN_QR_CODE_BOXES_TITLE">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_FYN_QR_CODE_BOXES_FYN_STOCK_OUT_1_FROM_FYN_QR_CODE_BOXES_TITLE' module='fyn_Stock_out'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="fyn_qr_code_boxes_fyn_stock_out_1_name"  >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.fyn_qr_code_boxes_fyn_stock_out_1_name.name}" class="sqsEnabled" tabindex="0" id="{$fields.fyn_qr_code_boxes_fyn_stock_out_1_name.name}" size="" value="{$fields.fyn_qr_code_boxes_fyn_stock_out_1_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.fyn_qr_code_boxes_fyn_stock_out_1_name.id_name}" 
id="{$fields.fyn_qr_code_boxes_fyn_stock_out_1_name.id_name}" 
value="{$fields.fyn_qr_code_boxes_fyn_stock_out_1fyn_qr_code_boxes_ida.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.fyn_qr_code_boxes_fyn_stock_out_1_name.name}" id="btn_{$fields.fyn_qr_code_boxes_fyn_stock_out_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_SELECT_BUTTON_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_SELECT_BUTTON_LABEL"}"
onclick='open_popup(
"{$fields.fyn_qr_code_boxes_fyn_stock_out_1_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"form_SubpanelQuickCreate_fyn_Stock_out","field_to_name_array":{"id":"fyn_qr_code_boxes_fyn_stock_out_1fyn_qr_code_boxes_ida","name":"fyn_qr_code_boxes_fyn_stock_out_1_name"}}{/literal}, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_{$fields.fyn_qr_code_boxes_fyn_stock_out_1_name.name}" id="btn_clr_{$fields.fyn_qr_code_boxes_fyn_stock_out_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.fyn_qr_code_boxes_fyn_stock_out_1_name.name}', '{$fields.fyn_qr_code_boxes_fyn_stock_out_1_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_LABEL"}" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.fyn_qr_code_boxes_fyn_stock_out_1_name.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_AOS_INVOICES_FYN_STOCK_OUT_1_FROM_AOS_INVOICES_TITLE">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_AOS_INVOICES_FYN_STOCK_OUT_1_FROM_AOS_INVOICES_TITLE' module='fyn_Stock_out'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="aos_invoices_fyn_stock_out_1_name"  >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.aos_invoices_fyn_stock_out_1_name.name}" class="sqsEnabled" tabindex="0" id="{$fields.aos_invoices_fyn_stock_out_1_name.name}" size="" value="{$fields.aos_invoices_fyn_stock_out_1_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.aos_invoices_fyn_stock_out_1_name.id_name}" 
id="{$fields.aos_invoices_fyn_stock_out_1_name.id_name}" 
value="{$fields.aos_invoices_fyn_stock_out_1aos_invoices_ida.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.aos_invoices_fyn_stock_out_1_name.name}" id="btn_{$fields.aos_invoices_fyn_stock_out_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_SELECT_BUTTON_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_SELECT_BUTTON_LABEL"}"
onclick='open_popup(
"{$fields.aos_invoices_fyn_stock_out_1_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"form_SubpanelQuickCreate_fyn_Stock_out","field_to_name_array":{"id":"aos_invoices_fyn_stock_out_1aos_invoices_ida","name":"aos_invoices_fyn_stock_out_1_name"}}{/literal}, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_{$fields.aos_invoices_fyn_stock_out_1_name.name}" id="btn_clr_{$fields.aos_invoices_fyn_stock_out_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.aos_invoices_fyn_stock_out_1_name.name}', '{$fields.aos_invoices_fyn_stock_out_1_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_LABEL"}" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.aos_invoices_fyn_stock_out_1_name.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-12 edit-view-row-item">


<div class="col-xs-12 col-sm-2 label" data-label="LBL_AOS_PRODUCTS_FYN_STOCK_OUT_1_FROM_AOS_PRODUCTS_TITLE">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_AOS_PRODUCTS_FYN_STOCK_OUT_1_FROM_AOS_PRODUCTS_TITLE' module='fyn_Stock_out'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="aos_products_fyn_stock_out_1_name" colspan='3' >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.aos_products_fyn_stock_out_1_name.name}" class="sqsEnabled" tabindex="0" id="{$fields.aos_products_fyn_stock_out_1_name.name}" size="" value="{$fields.aos_products_fyn_stock_out_1_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.aos_products_fyn_stock_out_1_name.id_name}" 
id="{$fields.aos_products_fyn_stock_out_1_name.id_name}" 
value="{$fields.aos_products_fyn_stock_out_1aos_products_ida.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.aos_products_fyn_stock_out_1_name.name}" id="btn_{$fields.aos_products_fyn_stock_out_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_SELECT_BUTTON_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_SELECT_BUTTON_LABEL"}"
onclick='open_popup(
"{$fields.aos_products_fyn_stock_out_1_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"form_SubpanelQuickCreate_fyn_Stock_out","field_to_name_array":{"id":"aos_products_fyn_stock_out_1aos_products_ida","name":"aos_products_fyn_stock_out_1_name"}}{/literal}, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_{$fields.aos_products_fyn_stock_out_1_name.name}" id="btn_clr_{$fields.aos_products_fyn_stock_out_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.aos_products_fyn_stock_out_1_name.name}', '{$fields.aos_products_fyn_stock_out_1_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_LABEL"}" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.aos_products_fyn_stock_out_1_name.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
</div>                    </div>
</div>
</div>
</div>
</div>

<script language="javascript">
    var _form_id = '{$form_id}';
    {literal}
    SUGAR.util.doWhen(function(){
        _form_id = (_form_id == '') ? 'EditView' : _form_id;
        return document.getElementById(_form_id) != null;
    }, SUGAR.themes.actionMenu);
    {/literal}
</script>
{assign var='place' value="_FOOTER"} <!-- to be used for id for buttons with custom code in def files-->
<div class="buttons">
{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}"  class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_fyn_Stock_out'); disableOnUnloadEditView(); _form.action.value='Save';if(check_form('form_SubpanelQuickCreate_fyn_Stock_out'))return SUGAR.subpanelUtils.inlineSave(_form.id, 'fyn_Stock_out_subpanel_save_button');return false;" type="submit" name="fyn_Stock_out_subpanel_save_button" id="fyn_Stock_out_subpanel_save_button" value="{$APP.LBL_SAVE_BUTTON_LABEL}">{/if} 
<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" class="button" onclick="return SUGAR.subpanelUtils.cancelCreate($(this).attr('id'));return false;" type="submit" name="fyn_Stock_out_subpanel_cancel_button" id="fyn_Stock_out_subpanel_cancel_button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}"> 
<input title="{$APP.LBL_FULL_FORM_BUTTON_TITLE}" class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_fyn_Stock_out'); disableOnUnloadEditView(_form); _form.return_action.value='DetailView'; _form.action.value='EditView'; if(typeof(_form.to_pdf)!='undefined') _form.to_pdf.value='0';" type="submit" name="fyn_Stock_out_subpanel_full_form_button" id="fyn_Stock_out_subpanel_full_form_button" value="{$APP.LBL_FULL_FORM_BUTTON_LABEL}"> <input type="hidden" name="full_form" value="full_form">
{if $showVCRControl}
<button type="button" id="save_and_continue" class="button saveAndContinue" title="{$app_strings.LBL_SAVE_AND_CONTINUE}" onClick="SUGAR.saveAndContinue(this);">
{$APP.LBL_SAVE_AND_CONTINUE}
</button>
{/if}
{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=fyn_Stock_out", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}
</div>
</form>
{$set_focus_block}
<script>SUGAR.util.doWhen("document.getElementById('EditView') != null",
        function(){ldelim}SUGAR.util.buildAccessKeyLabels();{rdelim});
</script>
<script type="text/javascript">
YAHOO.util.Event.onContentReady("form_SubpanelQuickCreate_fyn_Stock_out",
    function () {ldelim} initEditView(document.forms.form_SubpanelQuickCreate_fyn_Stock_out) {rdelim});
//window.setTimeout(, 100);
window.onbeforeunload = function () {ldelim} return onUnloadEditView(); {rdelim};
// bug 55468 -- IE is too aggressive with onUnload event
if ($.browser.msie) {ldelim}
$(document).ready(function() {ldelim}
    $(".collapseLink,.expandLink").click(function (e) {ldelim} e.preventDefault(); {rdelim});
  {rdelim});
{rdelim}
</script>
{literal}
<script type="text/javascript">

    var selectTab = function(tab) {
        $('#EditView_tabs div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER').hide();
        $('#EditView_tabs div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER').eq(tab).show().addClass('active').addClass('in');
    };

    var selectTabOnError = function(tab) {
        selectTab(tab);
        $('#EditView_tabs ul.nav.nav-tabs li').removeClass('active');
        $('#EditView_tabs ul.nav.nav-tabs li a').css('color', '');

        $('#EditView_tabs ul.nav.nav-tabs li').eq(tab).find('a').first().css('color', 'red');
        $('#EditView_tabs ul.nav.nav-tabs li').eq(tab).addClass('active');

    };

    var selectTabOnErrorInputHandle = function(inputHandle) {
        var tab = $(inputHandle).closest('.tab-pane-NOBOOTSTRAPTOGGLER').attr('id').match(/^detailpanel_(.*)$/)[1];
        selectTabOnError(tab);
    };


    $(function(){
        $('#EditView_tabs ul.nav.nav-tabs li > a[data-toggle="tab"]').click(function(e){
            if(typeof $(this).parent().find('a').first().attr('id') != 'undefined') {
                var tab = parseInt($(this).parent().find('a').first().attr('id').match(/^tab(.)*$/)[1]);
                selectTab(tab);
            }
        });

        $('a[data-toggle="collapse-edit"]').click(function(e){
            if($(this).hasClass('collapsed')) {
              // Expand panel
                // Change style of .panel-header
                $(this).removeClass('collapsed');
                // Expand .panel-body
                $(this).parents('.panel').find('.panel-body').removeClass('in').addClass('in');
            } else {
              // Collapse panel
                // Change style of .panel-header
                $(this).addClass('collapsed');
                // Collapse .panel-body
                $(this).parents('.panel').find('.panel-body').removeClass('in').removeClass('in');
            }
        });
    });

    </script>
{/literal}{literal}
<script type="text/javascript">
addForm('form_SubpanelQuickCreate_fyn_Stock_out');addToValidate('form_SubpanelQuickCreate_fyn_Stock_out', 'name', 'name', false,'{/literal}{sugar_translate label='LBL_NAME' module='fyn_Stock_out' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_fyn_Stock_out', 'date_entered_date', 'date', false,'Date Created' );
addToValidate('form_SubpanelQuickCreate_fyn_Stock_out', 'date_modified_date', 'date', false,'Date Modified' );
addToValidate('form_SubpanelQuickCreate_fyn_Stock_out', 'modified_user_id', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_MODIFIED' module='fyn_Stock_out' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_fyn_Stock_out', 'modified_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_MODIFIED_NAME' module='fyn_Stock_out' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_fyn_Stock_out', 'created_by', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_CREATED' module='fyn_Stock_out' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_fyn_Stock_out', 'created_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_CREATED' module='fyn_Stock_out' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_fyn_Stock_out', 'description', 'text', false,'{/literal}{sugar_translate label='LBL_DESCRIPTION' module='fyn_Stock_out' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_fyn_Stock_out', 'deleted', 'bool', false,'{/literal}{sugar_translate label='LBL_DELETED' module='fyn_Stock_out' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_fyn_Stock_out', 'assigned_user_id', 'relate', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_TO_ID' module='fyn_Stock_out' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_fyn_Stock_out', 'assigned_user_name', 'relate', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='fyn_Stock_out' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_fyn_Stock_out', 'quantity', 'varchar', true,'{/literal}{sugar_translate label='LBL_QUANTITY' module='fyn_Stock_out' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_fyn_Stock_out', 'fyn_vehicle_id_c', 'id', false,'{/literal}{sugar_translate label='LBL_SELECT_VEHICLE_FYN_VEHICLE_ID' module='fyn_Stock_out' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_fyn_Stock_out', 'fyn_qr_code_boxes_fyn_stock_out_1_name', 'relate', false,'{/literal}{sugar_translate label='LBL_FYN_QR_CODE_BOXES_FYN_STOCK_OUT_1_FROM_FYN_QR_CODE_BOXES_TITLE' module='fyn_Stock_out' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_fyn_Stock_out', 'destination_c', 'enum', false,'{/literal}{sugar_translate label='LBL_DESTINATION' module='fyn_Stock_out' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_fyn_Stock_out', 'aos_products_fyn_stock_out_1_name', 'relate', false,'{/literal}{sugar_translate label='LBL_AOS_PRODUCTS_FYN_STOCK_OUT_1_FROM_AOS_PRODUCTS_TITLE' module='fyn_Stock_out' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_fyn_Stock_out', 'aos_invoices_fyn_stock_out_1_name', 'relate', false,'{/literal}{sugar_translate label='LBL_AOS_INVOICES_FYN_STOCK_OUT_1_FROM_AOS_INVOICES_TITLE' module='fyn_Stock_out' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_fyn_Stock_out', 'do_not_delete_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_DO_NOT_DELETE' module='fyn_Stock_out' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_fyn_Stock_out', 'select_vehicle_c', 'relate', false,'{/literal}{sugar_translate label='LBL_SELECT_VEHICLE' module='fyn_Stock_out' for_js=true}{literal}' );
addToValidateBinaryDependency('form_SubpanelQuickCreate_fyn_Stock_out', 'assigned_user_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='fyn_Stock_out' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_ASSIGNED_TO' module='fyn_Stock_out' for_js=true}{literal}', 'assigned_user_id' );
addToValidateBinaryDependency('form_SubpanelQuickCreate_fyn_Stock_out', 'fyn_qr_code_boxes_fyn_stock_out_1_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='fyn_Stock_out' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_FYN_QR_CODE_BOXES_FYN_STOCK_OUT_1_FROM_FYN_QR_CODE_BOXES_TITLE' module='fyn_Stock_out' for_js=true}{literal}', 'fyn_qr_code_boxes_fyn_stock_out_1fyn_qr_code_boxes_ida' );
addToValidateBinaryDependency('form_SubpanelQuickCreate_fyn_Stock_out', 'aos_products_fyn_stock_out_1_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='fyn_Stock_out' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_AOS_PRODUCTS_FYN_STOCK_OUT_1_FROM_AOS_PRODUCTS_TITLE' module='fyn_Stock_out' for_js=true}{literal}', 'aos_products_fyn_stock_out_1aos_products_ida' );
addToValidateBinaryDependency('form_SubpanelQuickCreate_fyn_Stock_out', 'aos_invoices_fyn_stock_out_1_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='fyn_Stock_out' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_AOS_INVOICES_FYN_STOCK_OUT_1_FROM_AOS_INVOICES_TITLE' module='fyn_Stock_out' for_js=true}{literal}', 'aos_invoices_fyn_stock_out_1aos_invoices_ida' );
</script><script language="javascript">if(typeof sqs_objects == 'undefined'){var sqs_objects = new Array;}sqs_objects['form_SubpanelQuickCreate_fyn_Stock_out_assigned_user_name']={"form":"form_SubpanelQuickCreate_fyn_Stock_out","method":"get_user_array","field_list":["user_name","id"],"populate_list":["assigned_user_name","assigned_user_id"],"required_list":["assigned_user_id"],"conditions":[{"name":"user_name","op":"like_custom","end":"%","value":""}],"limit":"30","no_match_text":"No Match"};sqs_objects['form_SubpanelQuickCreate_fyn_Stock_out_fyn_qr_code_boxes_fyn_stock_out_1_name']={"form":"form_SubpanelQuickCreate_fyn_Stock_out","method":"query","modules":["fyn_QR_CODE_BOXES"],"group":"or","field_list":["name","id"],"populate_list":["fyn_qr_code_boxes_fyn_stock_out_1_name","fyn_qr_code_boxes_fyn_stock_out_1fyn_qr_code_boxes_ida"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};sqs_objects['form_SubpanelQuickCreate_fyn_Stock_out_aos_invoices_fyn_stock_out_1_name']={"form":"form_SubpanelQuickCreate_fyn_Stock_out","method":"query","modules":["AOS_Invoices"],"group":"or","field_list":["name","id"],"populate_list":["aos_invoices_fyn_stock_out_1_name","aos_invoices_fyn_stock_out_1aos_invoices_ida"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};sqs_objects['form_SubpanelQuickCreate_fyn_Stock_out_aos_products_fyn_stock_out_1_name']={"form":"form_SubpanelQuickCreate_fyn_Stock_out","method":"query","modules":["AOS_Products"],"group":"or","field_list":["name","id"],"populate_list":["aos_products_fyn_stock_out_1_name","aos_products_fyn_stock_out_1aos_products_ida"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};</script>{/literal}
