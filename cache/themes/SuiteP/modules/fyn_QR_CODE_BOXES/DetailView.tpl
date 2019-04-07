

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
{if $bean->aclAccess("edit")}<input title="{$APP.LBL_EDIT_BUTTON_TITLE}" accessKey="{$APP.LBL_EDIT_BUTTON_KEY}" class="button primary" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='fyn_QR_CODE_BOXES'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='EditView';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Edit" id="edit_button" value="{$APP.LBL_EDIT_BUTTON_LABEL}">{/if} 
{if $bean->aclAccess("edit")}<input title="{$APP.LBL_DUPLICATE_BUTTON_TITLE}" accessKey="{$APP.LBL_DUPLICATE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='fyn_QR_CODE_BOXES'; _form.return_action.value='DetailView'; _form.isDuplicate.value=true; _form.action.value='EditView'; _form.return_id.value='{$id}';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Duplicate" value="{$APP.LBL_DUPLICATE_BUTTON_LABEL}" id="duplicate_button">{/if} 
{if $bean->aclAccess("delete")}<input title="{$APP.LBL_DELETE_BUTTON_TITLE}" accessKey="{$APP.LBL_DELETE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='fyn_QR_CODE_BOXES'; _form.return_action.value='ListView'; _form.action.value='Delete'; if(confirm('{$APP.NTC_DELETE_CONFIRMATION}')) SUGAR.ajaxUI.submitForm(_form); return false;" type="submit" name="Delete" value="{$APP.LBL_DELETE_BUTTON_LABEL}" id="delete_button">{/if} 
{if $bean->aclAccess("edit") && $bean->aclAccess("delete")}<input title="{$APP.LBL_DUP_MERGE}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='fyn_QR_CODE_BOXES'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='Step1'; _form.module.value='MergeRecords';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Merge" value="{$APP.LBL_DUP_MERGE}" id="merge_duplicate_button">{/if} 
{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=fyn_QR_CODE_BOXES", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}
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
{sugar_translate label='DEFAULT' module='fyn_QR_CODE_BOXES'}
</a>
<a id="xstab0" href="#" class="visible-xs first-tab dropdown-toggle" data-toggle="dropdown">
{sugar_translate label='DEFAULT' module='fyn_QR_CODE_BOXES'}
</a>
</li>
{/if}
{if $config.enable_action_menu and $config.enable_action_menu != false}
<li id="tab-actions" class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">ACTIONS<span class="suitepicon suitepicon-action-caret"></span></a>
<ul class="dropdown-menu">
<li>{if $bean->aclAccess("edit")}<input title="{$APP.LBL_EDIT_BUTTON_TITLE}" accessKey="{$APP.LBL_EDIT_BUTTON_KEY}" class="button primary" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='fyn_QR_CODE_BOXES'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='EditView';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Edit" id="edit_button" value="{$APP.LBL_EDIT_BUTTON_LABEL}">{/if} </li>
<li>{if $bean->aclAccess("edit")}<input title="{$APP.LBL_DUPLICATE_BUTTON_TITLE}" accessKey="{$APP.LBL_DUPLICATE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='fyn_QR_CODE_BOXES'; _form.return_action.value='DetailView'; _form.isDuplicate.value=true; _form.action.value='EditView'; _form.return_id.value='{$id}';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Duplicate" value="{$APP.LBL_DUPLICATE_BUTTON_LABEL}" id="duplicate_button">{/if} </li>
<li>{if $bean->aclAccess("delete")}<input title="{$APP.LBL_DELETE_BUTTON_TITLE}" accessKey="{$APP.LBL_DELETE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='fyn_QR_CODE_BOXES'; _form.return_action.value='ListView'; _form.action.value='Delete'; if(confirm('{$APP.NTC_DELETE_CONFIRMATION}')) SUGAR.ajaxUI.submitForm(_form); return false;" type="submit" name="Delete" value="{$APP.LBL_DELETE_BUTTON_LABEL}" id="delete_button">{/if} </li>
<li>{if $bean->aclAccess("edit") && $bean->aclAccess("delete")}<input title="{$APP.LBL_DUP_MERGE}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='fyn_QR_CODE_BOXES'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='Step1'; _form.module.value='MergeRecords';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Merge" value="{$APP.LBL_DUP_MERGE}" id="merge_duplicate_button">{/if} </li>
<li>{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=fyn_QR_CODE_BOXES", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}</li>
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


{capture name="label" assign="label"}{sugar_translate label='LBL_NAME' module='fyn_QR_CODE_BOXES'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="name" field="name"  >

{if !$fields.name.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.name.value) <= 0}
{assign var="value" value=$fields.name.default_value }
{else}
{assign var="value" value=$fields.name.value }
{/if} 
<span class="sugar_field" id="{$fields.name.name}">{$fields.name.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_QR_IMAGE' module='fyn_QR_CODE_BOXES'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="image" field="qr_image"  >

{if !$fields.qr_image.hidden}
{counter name="panelFieldCount" print=false}

<span class="sugar_field" id="{$fields.qr_image.name}">
{if strlen($fields.qr_image.value) <= 0}
<img src="" style="max-width: {if !$vardef.width}120{else}200{/if}px;" height="{if !$vardef.height}{else}50{/if}">
{else}
<img src="index.php?entryPoint=download&id={$fields.id.value}_{$fields.qr_image.name}{$fields.width.value}&type={$module}" style="max-width: {if !$vardef.width}120{else}200{/if}px;" height="{if !$vardef.height}{else}50{/if}">
{/if}
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


{capture name="label" assign="label"}{sugar_translate label='LBL_AOS_PRODUCTS_FYN_QR_CODE_BOXES_1_FROM_AOS_PRODUCTS_TITLE' module='fyn_QR_CODE_BOXES'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="relate" field="aos_products_fyn_qr_code_boxes_1_name"  >

{if !$fields.aos_products_fyn_qr_code_boxes_1_name.hidden}
{counter name="panelFieldCount" print=false}

{if !empty($fields.aos_products_fyn_qr_code_boxes_1aos_products_ida.value)}
{capture assign="detail_url"}index.php?module=AOS_Products&action=DetailView&record={$fields.aos_products_fyn_qr_code_boxes_1aos_products_ida.value}{/capture}
<a href="{sugar_ajax_url url=$detail_url}">{/if}
<span id="aos_products_fyn_qr_code_boxes_1aos_products_ida" class="sugar_field" data-id-value="{$fields.aos_products_fyn_qr_code_boxes_1aos_products_ida.value}">{$fields.aos_products_fyn_qr_code_boxes_1_name.value}</span>
{if !empty($fields.aos_products_fyn_qr_code_boxes_1aos_products_ida.value)}</a>{/if}
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_FYN_QR_CODE_PALLETTE_FYN_QR_CODE_BOXES_1_FROM_FYN_QR_CODE_PALLETTE_TITLE' module='fyn_QR_CODE_BOXES'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="relate" field="fyn_qr_code_pallette_fyn_qr_code_boxes_1_name"  >

{if !$fields.fyn_qr_code_pallette_fyn_qr_code_boxes_1_name.hidden}
{counter name="panelFieldCount" print=false}

{if !empty($fields.fyn_qr_code_pallette_fyn_qr_code_boxes_1fyn_qr_code_pallette_ida.value)}
{capture assign="detail_url"}index.php?module=fyn_QR_CODE_PALLETTE&action=DetailView&record={$fields.fyn_qr_code_pallette_fyn_qr_code_boxes_1fyn_qr_code_pallette_ida.value}{/capture}
<a href="{sugar_ajax_url url=$detail_url}">{/if}
<span id="fyn_qr_code_pallette_fyn_qr_code_boxes_1fyn_qr_code_pallette_ida" class="sugar_field" data-id-value="{$fields.fyn_qr_code_pallette_fyn_qr_code_boxes_1fyn_qr_code_pallette_ida.value}">{$fields.fyn_qr_code_pallette_fyn_qr_code_boxes_1_name.value}</span>
{if !empty($fields.fyn_qr_code_pallette_fyn_qr_code_boxes_1fyn_qr_code_pallette_ida.value)}</a>{/if}
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


{capture name="label" assign="label"}{sugar_translate label='LBL_TRUCK_INFO' module='fyn_QR_CODE_BOXES'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="truck_info"  >

{if !$fields.truck_info.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.truck_info.value) <= 0}
{assign var="value" value=$fields.truck_info.default_value }
{else}
{assign var="value" value=$fields.truck_info.value }
{/if} 
<span class="sugar_field" id="{$fields.truck_info.name}">{$fields.truck_info.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_NO_OF_BOXES' module='fyn_QR_CODE_BOXES'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="no_of_boxes"  >

{if !$fields.no_of_boxes.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.no_of_boxes.value) <= 0}
{assign var="value" value=$fields.no_of_boxes.default_value }
{else}
{assign var="value" value=$fields.no_of_boxes.value }
{/if} 
<span class="sugar_field" id="{$fields.no_of_boxes.name}">{$fields.no_of_boxes.value}</span>
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


{capture name="label" assign="label"}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='fyn_QR_CODE_BOXES'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="relate" field="assigned_user_name" colspan='3' >

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


{capture name="label" assign="label"}{sugar_translate label='LBL_DATE_ENTERED' module='fyn_QR_CODE_BOXES'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field " type="datetime" field="date_entered"  >

{if !$fields.date_entered.hidden}
{counter name="panelFieldCount" print=false}


{assign var="value" value=01/30/2019 }
<span class="sugar_field" id="{$fields.date_entered.name}">{$value}</span>
{/if}

</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_DATE_MODIFIED' module='fyn_QR_CODE_BOXES'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field " type="datetime" field="date_modified"  >

{if !$fields.date_modified.hidden}
{counter name="panelFieldCount" print=false}


{if strlen($fields.date_modified.value) <= 0}
{assign var="value" value=$fields.date_modified.default_value }
{else}
{assign var="value" value=$fields.date_modified.value }
{/if}
<span class="sugar_field" id="{$fields.date_modified.name}">{$value}</span>
{/if}

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
{sugar_translate label='DEFAULT' module='fyn_QR_CODE_BOXES'}
</div>
</a>
</div>
<div class="panel-body panel-collapse collapse in panelContainer" id="top-panel--1" data-id="DEFAULT">
<div class="tab-content">
<!-- TAB CONTENT -->





<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_NAME' module='fyn_QR_CODE_BOXES'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="name" field="name"  >

{if !$fields.name.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.name.value) <= 0}
{assign var="value" value=$fields.name.default_value }
{else}
{assign var="value" value=$fields.name.value }
{/if} 
<span class="sugar_field" id="{$fields.name.name}">{$fields.name.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_QR_IMAGE' module='fyn_QR_CODE_BOXES'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="image" field="qr_image"  >

{if !$fields.qr_image.hidden}
{counter name="panelFieldCount" print=false}

<span class="sugar_field" id="{$fields.qr_image.name}">
{if strlen($fields.qr_image.value) <= 0}
<img src="" style="max-width: {if !$vardef.width}120{else}200{/if}px;" height="{if !$vardef.height}{else}50{/if}">
{else}
<img src="index.php?entryPoint=download&id={$fields.id.value}_{$fields.qr_image.name}{$fields.width.value}&type={$module}" style="max-width: {if !$vardef.width}120{else}200{/if}px;" height="{if !$vardef.height}{else}50{/if}">
{/if}
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


{capture name="label" assign="label"}{sugar_translate label='LBL_AOS_PRODUCTS_FYN_QR_CODE_BOXES_1_FROM_AOS_PRODUCTS_TITLE' module='fyn_QR_CODE_BOXES'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="relate" field="aos_products_fyn_qr_code_boxes_1_name"  >

{if !$fields.aos_products_fyn_qr_code_boxes_1_name.hidden}
{counter name="panelFieldCount" print=false}

{if !empty($fields.aos_products_fyn_qr_code_boxes_1aos_products_ida.value)}
{capture assign="detail_url"}index.php?module=AOS_Products&action=DetailView&record={$fields.aos_products_fyn_qr_code_boxes_1aos_products_ida.value}{/capture}
<a href="{sugar_ajax_url url=$detail_url}">{/if}
<span id="aos_products_fyn_qr_code_boxes_1aos_products_ida" class="sugar_field" data-id-value="{$fields.aos_products_fyn_qr_code_boxes_1aos_products_ida.value}">{$fields.aos_products_fyn_qr_code_boxes_1_name.value}</span>
{if !empty($fields.aos_products_fyn_qr_code_boxes_1aos_products_ida.value)}</a>{/if}
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_FYN_QR_CODE_PALLETTE_FYN_QR_CODE_BOXES_1_FROM_FYN_QR_CODE_PALLETTE_TITLE' module='fyn_QR_CODE_BOXES'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="relate" field="fyn_qr_code_pallette_fyn_qr_code_boxes_1_name"  >

{if !$fields.fyn_qr_code_pallette_fyn_qr_code_boxes_1_name.hidden}
{counter name="panelFieldCount" print=false}

{if !empty($fields.fyn_qr_code_pallette_fyn_qr_code_boxes_1fyn_qr_code_pallette_ida.value)}
{capture assign="detail_url"}index.php?module=fyn_QR_CODE_PALLETTE&action=DetailView&record={$fields.fyn_qr_code_pallette_fyn_qr_code_boxes_1fyn_qr_code_pallette_ida.value}{/capture}
<a href="{sugar_ajax_url url=$detail_url}">{/if}
<span id="fyn_qr_code_pallette_fyn_qr_code_boxes_1fyn_qr_code_pallette_ida" class="sugar_field" data-id-value="{$fields.fyn_qr_code_pallette_fyn_qr_code_boxes_1fyn_qr_code_pallette_ida.value}">{$fields.fyn_qr_code_pallette_fyn_qr_code_boxes_1_name.value}</span>
{if !empty($fields.fyn_qr_code_pallette_fyn_qr_code_boxes_1fyn_qr_code_pallette_ida.value)}</a>{/if}
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


{capture name="label" assign="label"}{sugar_translate label='LBL_TRUCK_INFO' module='fyn_QR_CODE_BOXES'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="truck_info"  >

{if !$fields.truck_info.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.truck_info.value) <= 0}
{assign var="value" value=$fields.truck_info.default_value }
{else}
{assign var="value" value=$fields.truck_info.value }
{/if} 
<span class="sugar_field" id="{$fields.truck_info.name}">{$fields.truck_info.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_NO_OF_BOXES' module='fyn_QR_CODE_BOXES'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="no_of_boxes"  >

{if !$fields.no_of_boxes.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.no_of_boxes.value) <= 0}
{assign var="value" value=$fields.no_of_boxes.default_value }
{else}
{assign var="value" value=$fields.no_of_boxes.value }
{/if} 
<span class="sugar_field" id="{$fields.no_of_boxes.name}">{$fields.no_of_boxes.value}</span>
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


{capture name="label" assign="label"}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='fyn_QR_CODE_BOXES'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="relate" field="assigned_user_name" colspan='3' >

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


{capture name="label" assign="label"}{sugar_translate label='LBL_DATE_ENTERED' module='fyn_QR_CODE_BOXES'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field " type="datetime" field="date_entered"  >

{if !$fields.date_entered.hidden}
{counter name="panelFieldCount" print=false}


{assign var="value" value=01/30/2019 }
<span class="sugar_field" id="{$fields.date_entered.name}">{$value}</span>
{/if}

</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_DATE_MODIFIED' module='fyn_QR_CODE_BOXES'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field " type="datetime" field="date_modified"  >

{if !$fields.date_modified.hidden}
{counter name="panelFieldCount" print=false}


{if strlen($fields.date_modified.value) <= 0}
{assign var="value" value=$fields.date_modified.default_value }
{else}
{assign var="value" value=$fields.date_modified.value }
{/if}
<span class="sugar_field" id="{$fields.date_modified.name}">{$value}</span>
{/if}

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