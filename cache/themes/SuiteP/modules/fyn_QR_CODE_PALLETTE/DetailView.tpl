

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
{if $bean->aclAccess("edit")}<input title="{$APP.LBL_EDIT_BUTTON_TITLE}" accessKey="{$APP.LBL_EDIT_BUTTON_KEY}" class="button primary" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='fyn_QR_CODE_PALLETTE'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='EditView';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Edit" id="edit_button" value="{$APP.LBL_EDIT_BUTTON_LABEL}">{/if} 
{if $bean->aclAccess("edit")}<input title="{$APP.LBL_DUPLICATE_BUTTON_TITLE}" accessKey="{$APP.LBL_DUPLICATE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='fyn_QR_CODE_PALLETTE'; _form.return_action.value='DetailView'; _form.isDuplicate.value=true; _form.action.value='EditView'; _form.return_id.value='{$id}';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Duplicate" value="{$APP.LBL_DUPLICATE_BUTTON_LABEL}" id="duplicate_button">{/if} 
{if $bean->aclAccess("delete")}<input title="{$APP.LBL_DELETE_BUTTON_TITLE}" accessKey="{$APP.LBL_DELETE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='fyn_QR_CODE_PALLETTE'; _form.return_action.value='ListView'; _form.action.value='Delete'; if(confirm('{$APP.NTC_DELETE_CONFIRMATION}')) SUGAR.ajaxUI.submitForm(_form); return false;" type="submit" name="Delete" value="{$APP.LBL_DELETE_BUTTON_LABEL}" id="delete_button">{/if} 
{if $bean->aclAccess("edit") && $bean->aclAccess("delete")}<input title="{$APP.LBL_DUP_MERGE}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='fyn_QR_CODE_PALLETTE'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='Step1'; _form.module.value='MergeRecords';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Merge" value="{$APP.LBL_DUP_MERGE}" id="merge_duplicate_button">{/if} 
{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=fyn_QR_CODE_PALLETTE", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}
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


<li role="presentation" class="active">
<a id="tab0" data-toggle="tab" class="hidden-xs">
{sugar_translate label='DEFAULT' module='fyn_QR_CODE_PALLETTE'}
</a>


<a id="xstab0" href="#" class="visible-xs first-tab-xs dropdown-toggle" data-toggle="dropdown">
{sugar_translate label='DEFAULT' module='fyn_QR_CODE_PALLETTE'}
</a>
<ul id="first-tab-menu-xs" class="dropdown-menu">
<li role="presentation">
<a id="tab1" data-toggle="tab" onclick="changeFirstTab(this, 'tab-content-1');">
{sugar_translate label='DEFAULT' module='fyn_QR_CODE_PALLETTE'}
</a>
</li>
<li role="presentation">
<a id="tab2" data-toggle="tab" onclick="changeFirstTab(this, 'tab-content-2');">
{sugar_translate label='LBL_DETAILVIEW_PANEL1' module='fyn_QR_CODE_PALLETTE'}
</a>
</li>
<li role="presentation">
<a id="tab3" data-toggle="tab" onclick="changeFirstTab(this, 'tab-content-3');">
{sugar_translate label='LBL_DETAILVIEW_PANEL2' module='fyn_QR_CODE_PALLETTE'}
</a>
</li>
<li role="presentation">
<a id="tab4" data-toggle="tab" onclick="changeFirstTab(this, 'tab-content-4');">
{sugar_translate label='LBL_DETAILVIEW_PANEL3' module='fyn_QR_CODE_PALLETTE'}
</a>
</li>
</ul>
</li>


<li role="presentation" class="hidden-xs">
<a id="tab1" data-toggle="tab">
{sugar_translate label='LBL_DETAILVIEW_PANEL1' module='fyn_QR_CODE_PALLETTE'}
</a>
</li>


<li role="presentation" class="hidden-xs">
<a id="tab2" data-toggle="tab">
{sugar_translate label='LBL_DETAILVIEW_PANEL2' module='fyn_QR_CODE_PALLETTE'}
</a>
</li>


<li role="presentation" class="hidden-xs">
<a id="tab3" data-toggle="tab">
{sugar_translate label='LBL_DETAILVIEW_PANEL3' module='fyn_QR_CODE_PALLETTE'}
</a>
</li>
{if $config.enable_action_menu and $config.enable_action_menu != false}
<li id="tab-actions" class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">ACTIONS<span class="suitepicon suitepicon-action-caret"></span></a>
<ul class="dropdown-menu">
<li>{if $bean->aclAccess("edit")}<input title="{$APP.LBL_EDIT_BUTTON_TITLE}" accessKey="{$APP.LBL_EDIT_BUTTON_KEY}" class="button primary" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='fyn_QR_CODE_PALLETTE'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='EditView';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Edit" id="edit_button" value="{$APP.LBL_EDIT_BUTTON_LABEL}">{/if} </li>
<li>{if $bean->aclAccess("edit")}<input title="{$APP.LBL_DUPLICATE_BUTTON_TITLE}" accessKey="{$APP.LBL_DUPLICATE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='fyn_QR_CODE_PALLETTE'; _form.return_action.value='DetailView'; _form.isDuplicate.value=true; _form.action.value='EditView'; _form.return_id.value='{$id}';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Duplicate" value="{$APP.LBL_DUPLICATE_BUTTON_LABEL}" id="duplicate_button">{/if} </li>
<li>{if $bean->aclAccess("delete")}<input title="{$APP.LBL_DELETE_BUTTON_TITLE}" accessKey="{$APP.LBL_DELETE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='fyn_QR_CODE_PALLETTE'; _form.return_action.value='ListView'; _form.action.value='Delete'; if(confirm('{$APP.NTC_DELETE_CONFIRMATION}')) SUGAR.ajaxUI.submitForm(_form); return false;" type="submit" name="Delete" value="{$APP.LBL_DELETE_BUTTON_LABEL}" id="delete_button">{/if} </li>
<li>{if $bean->aclAccess("edit") && $bean->aclAccess("delete")}<input title="{$APP.LBL_DUP_MERGE}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='fyn_QR_CODE_PALLETTE'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='Step1'; _form.module.value='MergeRecords';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Merge" value="{$APP.LBL_DUP_MERGE}" id="merge_duplicate_button">{/if} </li>
<li>{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=fyn_QR_CODE_PALLETTE", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}</li>
</ul>        </li>
<li class="tab-inline-pagination">
{$PAGINATION}
</li>
{/if}
</ul>
<div class="clearfix"></div>

<div class="tab-content">

<div class="tab-pane-NOBOOTSTRAPTOGGLER active fade in" id='tab-content-0'>





<div class="row detail-view-row">



<div class="col-xs-12 col-sm-12 detail-view-row-item">


<div class="col-xs-12 col-sm-2 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_NAME' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="name" field="name" colspan='3' >

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

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-12 detail-view-row-item">


<div class="col-xs-12 col-sm-2 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_QRIMAGE' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="image" field="qrimage" colspan='3' >

{if !$fields.qrimage.hidden}
{counter name="panelFieldCount" print=false}

<span class="sugar_field" id="{$fields.qrimage.name}">
{if strlen($fields.qrimage.value) <= 0}
<img src="" style="max-width: {if !$vardef.width}120{else}200{/if}px;" height="{if !$vardef.height}{else}50{/if}">
{else}
<img src="index.php?entryPoint=download&id={$fields.id.value}_{$fields.qrimage.name}{$fields.width.value}&type={$module}" style="max-width: {if !$vardef.width}120{else}200{/if}px;" height="{if !$vardef.height}{else}50{/if}">
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


{capture name="label" assign="label"}{sugar_translate label='LBL_STATUS' module='fyn_QR_CODE_PALLETTE'}{/capture}
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


{capture name="label" assign="label"}{sugar_translate label='LBL_TRUCKINFO' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="truckinfo"  >

{if !$fields.truckinfo.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.truckinfo.value) <= 0}
{assign var="value" value=$fields.truckinfo.default_value }
{else}
{assign var="value" value=$fields.truckinfo.value }
{/if} 
<span class="sugar_field" id="{$fields.truckinfo.name}">{$fields.truckinfo.value}</span>
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


{capture name="label" assign="label"}{sugar_translate label='LBL_DRIVERNAME' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="drivername"  >

{if !$fields.drivername.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.drivername.value) <= 0}
{assign var="value" value=$fields.drivername.default_value }
{else}
{assign var="value" value=$fields.drivername.value }
{/if} 
<span class="sugar_field" id="{$fields.drivername.name}">{$fields.drivername.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_FARMUNIT' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="enum" field="farmunit"  >

{if !$fields.farmunit.hidden}
{counter name="panelFieldCount" print=false}


{if is_string($fields.farmunit.options)}
<input type="hidden" class="sugar_field" id="{$fields.farmunit.name}" value="{ $fields.farmunit.options }">
{ $fields.farmunit.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.farmunit.name}" value="{ $fields.farmunit.value }">
{ $fields.farmunit.options[$fields.farmunit.value]}
{/if}
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


{capture name="label" assign="label"}{sugar_translate label='LBL_TOTAL_BOXES' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="varchar" field="total_boxes" colspan='3' >

{if !$fields.total_boxes.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.total_boxes.value) <= 0}
{assign var="value" value=$fields.total_boxes.default_value }
{else}
{assign var="value" value=$fields.total_boxes.value }
{/if} 
<span class="sugar_field" id="{$fields.total_boxes.name}">{$fields.total_boxes.value}</span>
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


{capture name="label" assign="label"}{sugar_translate label='LBL_DATE_ENTERED' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field " type="datetime" field="date_entered"  >

{if !$fields.date_entered.hidden}
{counter name="panelFieldCount" print=false}


{assign var="value" value=01/01/2019 }
<span class="sugar_field" id="{$fields.date_entered.name}">{$value}</span>
{/if}

</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_DATE_MODIFIED' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field " type="datetime" field="date_modified"  >

{if !$fields.date_modified.hidden}
{counter name="panelFieldCount" print=false}


{assign var="value" value=01/01/2019 }
<span class="sugar_field" id="{$fields.date_modified.name}">{$value}</span>
{/if}

</div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-12 detail-view-row-item">


<div class="col-xs-12 col-sm-2 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='fyn_QR_CODE_PALLETTE'}{/capture}
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



<div class="col-xs-12 col-sm-12 detail-view-row-item">


<div class="col-xs-12 col-sm-2 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_DESCRIPTION' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="text" field="description" colspan='3' >

{if !$fields.description.hidden}
{counter name="panelFieldCount" print=false}

<span class="sugar_field" id="{$fields.description.name|escape:'html'|url2html|nl2br}">{$fields.description.value|escape:'html'|escape:'html_entity_decode'|url2html|nl2br}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>
                    </div>
<div class="tab-pane-NOBOOTSTRAPTOGGLER fade" id='tab-content-1'>





<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_28' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class1_box_28_c"  >

{if !$fields.class1_box_28_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_28_c.value) <= 0}
{assign var="value" value=$fields.class1_box_28_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_28_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class1_box_28_c.name}">{$fields.class1_box_28_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_48' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class1_box_48_c"  >

{if !$fields.class1_box_48_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_48_c.value) <= 0}
{assign var="value" value=$fields.class1_box_48_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_48_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class1_box_48_c.name}">{$fields.class1_box_48_c.value}</span>
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


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_32' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class1_box_32_c"  >

{if !$fields.class1_box_32_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_32_c.value) <= 0}
{assign var="value" value=$fields.class1_box_32_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_32_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class1_box_32_c.name}">{$fields.class1_box_32_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_60' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class1_box_60_c"  >

{if !$fields.class1_box_60_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_60_c.value) <= 0}
{assign var="value" value=$fields.class1_box_60_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_60_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class1_box_60_c.name}">{$fields.class1_box_60_c.value}</span>
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


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_36' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class1_box_36_c"  >

{if !$fields.class1_box_36_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_36_c.value) <= 0}
{assign var="value" value=$fields.class1_box_36_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_36_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class1_box_36_c.name}">{$fields.class1_box_36_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_70' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class1_box_70_c"  >

{if !$fields.class1_box_70_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_70_c.value) <= 0}
{assign var="value" value=$fields.class1_box_70_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_70_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class1_box_70_c.name}">{$fields.class1_box_70_c.value}</span>
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


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_40' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class1_box_40_c"  >

{if !$fields.class1_box_40_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_40_c.value) <= 0}
{assign var="value" value=$fields.class1_box_40_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_40_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class1_box_40_c.name}">{$fields.class1_box_40_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_84' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class1_box_84_c"  >

{if !$fields.class1_box_84_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_84_c.value) <= 0}
{assign var="value" value=$fields.class1_box_84_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_84_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class1_box_84_c.name}">{$fields.class1_box_84_c.value}</span>
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


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_96' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class1_box_96_c"  >

{if !$fields.class1_box_96_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_96_c.value) <= 0}
{assign var="value" value=$fields.class1_box_96_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_96_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class1_box_96_c.name}">{$fields.class1_box_96_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_108' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class1_box_108_c"  >

{if !$fields.class1_box_108_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_108_c.value) <= 0}
{assign var="value" value=$fields.class1_box_108_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_108_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class1_box_108_c.name}">{$fields.class1_box_108_c.value}</span>
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


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_120' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class1_box_120_c"  >

{if !$fields.class1_box_120_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_120_c.value) <= 0}
{assign var="value" value=$fields.class1_box_120_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_120_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class1_box_120_c.name}">{$fields.class1_box_120_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_132' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class1_box_132_c"  >

{if !$fields.class1_box_132_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_132_c.value) <= 0}
{assign var="value" value=$fields.class1_box_132_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_132_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class1_box_132_c.name}">{$fields.class1_box_132_c.value}</span>
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


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_144' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class1_box_144_c"  >

{if !$fields.class1_box_144_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_144_c.value) <= 0}
{assign var="value" value=$fields.class1_box_144_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_144_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class1_box_144_c.name}">{$fields.class1_box_144_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_156' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class1_box_156_c"  >

{if !$fields.class1_box_156_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_156_c.value) <= 0}
{assign var="value" value=$fields.class1_box_156_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_156_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class1_box_156_c.name}">{$fields.class1_box_156_c.value}</span>
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


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_168' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class1_box_168_c"  >

{if !$fields.class1_box_168_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_168_c.value) <= 0}
{assign var="value" value=$fields.class1_box_168_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_168_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class1_box_168_c.name}">{$fields.class1_box_168_c.value}</span>
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



<div class="col-xs-12 col-sm-12 detail-view-row-item">


<div class="col-xs-12 col-sm-2 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_TOTAL' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="varchar" field="class1_total_c" colspan='3' >

{if !$fields.class1_total_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_total_c.value) <= 0}
{assign var="value" value=$fields.class1_total_c.default_value }
{else}
{assign var="value" value=$fields.class1_total_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class1_total_c.name}">{$fields.class1_total_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>
                    </div>
<div class="tab-pane-NOBOOTSTRAPTOGGLER fade" id='tab-content-2'>





<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_28' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class2_box_28_c"  >

{if !$fields.class2_box_28_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_28_c.value) <= 0}
{assign var="value" value=$fields.class2_box_28_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_28_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class2_box_28_c.name}">{$fields.class2_box_28_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_48' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class2_box_48_c"  >

{if !$fields.class2_box_48_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_48_c.value) <= 0}
{assign var="value" value=$fields.class2_box_48_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_48_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class2_box_48_c.name}">{$fields.class2_box_48_c.value}</span>
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


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_32' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class2_box_32_c"  >

{if !$fields.class2_box_32_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_32_c.value) <= 0}
{assign var="value" value=$fields.class2_box_32_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_32_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class2_box_32_c.name}">{$fields.class2_box_32_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_60' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class2_box_60_c"  >

{if !$fields.class2_box_60_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_60_c.value) <= 0}
{assign var="value" value=$fields.class2_box_60_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_60_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class2_box_60_c.name}">{$fields.class2_box_60_c.value}</span>
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


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_36' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class2_box_36_c"  >

{if !$fields.class2_box_36_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_36_c.value) <= 0}
{assign var="value" value=$fields.class2_box_36_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_36_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class2_box_36_c.name}">{$fields.class2_box_36_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_70' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class2_box_70_c"  >

{if !$fields.class2_box_70_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_70_c.value) <= 0}
{assign var="value" value=$fields.class2_box_70_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_70_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class2_box_70_c.name}">{$fields.class2_box_70_c.value}</span>
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


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_40' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class2_box_40_c"  >

{if !$fields.class2_box_40_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_40_c.value) <= 0}
{assign var="value" value=$fields.class2_box_40_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_40_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class2_box_40_c.name}">{$fields.class2_box_40_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_84' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class2_box_84_c"  >

{if !$fields.class2_box_84_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_84_c.value) <= 0}
{assign var="value" value=$fields.class2_box_84_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_84_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class2_box_84_c.name}">{$fields.class2_box_84_c.value}</span>
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


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_96' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class2_box_96_c"  >

{if !$fields.class2_box_96_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_96_c.value) <= 0}
{assign var="value" value=$fields.class2_box_96_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_96_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class2_box_96_c.name}">{$fields.class2_box_96_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_108' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class2_box_108_c"  >

{if !$fields.class2_box_108_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_108_c.value) <= 0}
{assign var="value" value=$fields.class2_box_108_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_108_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class2_box_108_c.name}">{$fields.class2_box_108_c.value}</span>
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


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_120' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class2_box_120_c"  >

{if !$fields.class2_box_120_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_120_c.value) <= 0}
{assign var="value" value=$fields.class2_box_120_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_120_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class2_box_120_c.name}">{$fields.class2_box_120_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_132' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class2_box_132_c"  >

{if !$fields.class2_box_132_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_132_c.value) <= 0}
{assign var="value" value=$fields.class2_box_132_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_132_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class2_box_132_c.name}">{$fields.class2_box_132_c.value}</span>
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


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_144' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class2_box_144_c"  >

{if !$fields.class2_box_144_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_144_c.value) <= 0}
{assign var="value" value=$fields.class2_box_144_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_144_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class2_box_144_c.name}">{$fields.class2_box_144_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_156' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class2_box_156_c"  >

{if !$fields.class2_box_156_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_156_c.value) <= 0}
{assign var="value" value=$fields.class2_box_156_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_156_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class2_box_156_c.name}">{$fields.class2_box_156_c.value}</span>
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


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_168' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="class2_box_168_c"  >

{if !$fields.class2_box_168_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_168_c.value) <= 0}
{assign var="value" value=$fields.class2_box_168_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_168_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class2_box_168_c.name}">{$fields.class2_box_168_c.value}</span>
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



<div class="col-xs-12 col-sm-12 detail-view-row-item">


<div class="col-xs-12 col-sm-2 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_TOTAL' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="varchar" field="class2_total_c" colspan='3' >

{if !$fields.class2_total_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_total_c.value) <= 0}
{assign var="value" value=$fields.class2_total_c.default_value }
{else}
{assign var="value" value=$fields.class2_total_c.value }
{/if} 
<span class="sugar_field" id="{$fields.class2_total_c.name}">{$fields.class2_total_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>
                    </div>
<div class="tab-pane-NOBOOTSTRAPTOGGLER fade" id='tab-content-3'>





<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_28' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="organic_box_28_c"  >

{if !$fields.organic_box_28_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_28_c.value) <= 0}
{assign var="value" value=$fields.organic_box_28_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_28_c.value }
{/if} 
<span class="sugar_field" id="{$fields.organic_box_28_c.name}">{$fields.organic_box_28_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_48' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="organic_box_48_c"  >

{if !$fields.organic_box_48_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_48_c.value) <= 0}
{assign var="value" value=$fields.organic_box_48_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_48_c.value }
{/if} 
<span class="sugar_field" id="{$fields.organic_box_48_c.name}">{$fields.organic_box_48_c.value}</span>
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


{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_32' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="organic_box_32_c"  >

{if !$fields.organic_box_32_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_32_c.value) <= 0}
{assign var="value" value=$fields.organic_box_32_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_32_c.value }
{/if} 
<span class="sugar_field" id="{$fields.organic_box_32_c.name}">{$fields.organic_box_32_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_60' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="organic_box_60_c"  >

{if !$fields.organic_box_60_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_60_c.value) <= 0}
{assign var="value" value=$fields.organic_box_60_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_60_c.value }
{/if} 
<span class="sugar_field" id="{$fields.organic_box_60_c.name}">{$fields.organic_box_60_c.value}</span>
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


{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_36' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="organic_box_36_c"  >

{if !$fields.organic_box_36_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_36_c.value) <= 0}
{assign var="value" value=$fields.organic_box_36_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_36_c.value }
{/if} 
<span class="sugar_field" id="{$fields.organic_box_36_c.name}">{$fields.organic_box_36_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_70' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="organic_box_70_c"  >

{if !$fields.organic_box_70_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_70_c.value) <= 0}
{assign var="value" value=$fields.organic_box_70_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_70_c.value }
{/if} 
<span class="sugar_field" id="{$fields.organic_box_70_c.name}">{$fields.organic_box_70_c.value}</span>
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


{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_40' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="organic_box_40_c"  >

{if !$fields.organic_box_40_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_40_c.value) <= 0}
{assign var="value" value=$fields.organic_box_40_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_40_c.value }
{/if} 
<span class="sugar_field" id="{$fields.organic_box_40_c.name}">{$fields.organic_box_40_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_84' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="organic_box_84_c"  >

{if !$fields.organic_box_84_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_84_c.value) <= 0}
{assign var="value" value=$fields.organic_box_84_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_84_c.value }
{/if} 
<span class="sugar_field" id="{$fields.organic_box_84_c.name}">{$fields.organic_box_84_c.value}</span>
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


{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_96' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="organic_box_96_c"  >

{if !$fields.organic_box_96_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_96_c.value) <= 0}
{assign var="value" value=$fields.organic_box_96_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_96_c.value }
{/if} 
<span class="sugar_field" id="{$fields.organic_box_96_c.name}">{$fields.organic_box_96_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_108' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="organic_box_108_c"  >

{if !$fields.organic_box_108_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_108_c.value) <= 0}
{assign var="value" value=$fields.organic_box_108_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_108_c.value }
{/if} 
<span class="sugar_field" id="{$fields.organic_box_108_c.name}">{$fields.organic_box_108_c.value}</span>
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


{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_120' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="organic_box_120_c"  >

{if !$fields.organic_box_120_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_120_c.value) <= 0}
{assign var="value" value=$fields.organic_box_120_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_120_c.value }
{/if} 
<span class="sugar_field" id="{$fields.organic_box_120_c.name}">{$fields.organic_box_120_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_132' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="organic_box_132_c"  >

{if !$fields.organic_box_132_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_132_c.value) <= 0}
{assign var="value" value=$fields.organic_box_132_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_132_c.value }
{/if} 
<span class="sugar_field" id="{$fields.organic_box_132_c.name}">{$fields.organic_box_132_c.value}</span>
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


{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_144' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="organic_box_144_c"  >

{if !$fields.organic_box_144_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_144_c.value) <= 0}
{assign var="value" value=$fields.organic_box_144_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_144_c.value }
{/if} 
<span class="sugar_field" id="{$fields.organic_box_144_c.name}">{$fields.organic_box_144_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_156' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="organic_box_156_c"  >

{if !$fields.organic_box_156_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_156_c.value) <= 0}
{assign var="value" value=$fields.organic_box_156_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_156_c.value }
{/if} 
<span class="sugar_field" id="{$fields.organic_box_156_c.name}">{$fields.organic_box_156_c.value}</span>
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


{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_168' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field inlineEdit" type="varchar" field="organic_box_168_c"  >

{if !$fields.organic_box_168_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_168_c.value) <= 0}
{assign var="value" value=$fields.organic_box_168_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_168_c.value }
{/if} 
<span class="sugar_field" id="{$fields.organic_box_168_c.name}">{$fields.organic_box_168_c.value}</span>
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



<div class="col-xs-12 col-sm-12 detail-view-row-item">


<div class="col-xs-12 col-sm-2 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_TOTAL' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-10 detail-view-field inlineEdit" type="varchar" field="organic_total_c" colspan='3' >

{if !$fields.organic_total_c.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_total_c.value) <= 0}
{assign var="value" value=$fields.organic_total_c.default_value }
{else}
{assign var="value" value=$fields.organic_total_c.value }
{/if} 
<span class="sugar_field" id="{$fields.organic_total_c.name}">{$fields.organic_total_c.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
<span class="suitepicon suitepicon-action-edit"></span>
</div>
</div>


</div>

</div>
                    </div>
</div>

<div class="panel-content">
<div>&nbsp;</div>








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