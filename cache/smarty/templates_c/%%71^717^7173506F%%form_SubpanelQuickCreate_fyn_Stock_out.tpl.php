<?php /* Smarty version 2.6.31, created on 2019-02-20 12:47:03
         compiled from cache/themes/SuiteP/modules/fyn_Stock_out/form_SubpanelQuickCreate_fyn_Stock_out.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'sugar_include', 'cache/themes/SuiteP/modules/fyn_Stock_out/form_SubpanelQuickCreate_fyn_Stock_out.tpl', 62, false),array('function', 'sugar_translate', 'cache/themes/SuiteP/modules/fyn_Stock_out/form_SubpanelQuickCreate_fyn_Stock_out.tpl', 83, false),array('function', 'counter', 'cache/themes/SuiteP/modules/fyn_Stock_out/form_SubpanelQuickCreate_fyn_Stock_out.tpl', 107, false),array('block', 'minify', 'cache/themes/SuiteP/modules/fyn_Stock_out/form_SubpanelQuickCreate_fyn_Stock_out.tpl', 99, false),array('modifier', 'strip_semicolon', 'cache/themes/SuiteP/modules/fyn_Stock_out/form_SubpanelQuickCreate_fyn_Stock_out.tpl', 101, false),)), $this); ?>


<script>
    <?php echo '
    $(document).ready(function(){
	    $("ul.clickMenu").each(function(index, node){
	        $(node).sugarActionMenu();
	    });

        if($(\'.edit-view-pagination\').children().length == 0) $(\'.saveAndContinue\').remove();
    });
    '; ?>

</script>
<div class="clear"></div>
<form action="index.php" method="POST" name="<?php echo $this->_tpl_vars['form_name']; ?>
" id="<?php echo $this->_tpl_vars['form_id']; ?>
" <?php echo $this->_tpl_vars['enctype']; ?>
>
<div class="edit-view-pagination-mobile-container">
<div class="edit-view-pagination edit-view-mobile-pagination">
</div>
</div>
<table width="100%" cellpadding="0" cellspacing="0" border="0" class="dcQuickEdit">
<tr>
<td class="buttons">
<input type="hidden" name="module" value="<?php echo $this->_tpl_vars['module']; ?>
">
<?php if (isset ( $_REQUEST['isDuplicate'] ) && $_REQUEST['isDuplicate'] == 'true'): ?>
<input type="hidden" name="record" value="">
<input type="hidden" name="duplicateSave" value="true">
<input type="hidden" name="duplicateId" value="<?php echo $this->_tpl_vars['fields']['id']['value']; ?>
">
<?php else: ?>
<input type="hidden" name="record" value="<?php echo $this->_tpl_vars['fields']['id']['value']; ?>
">
<?php endif; ?>
<input type="hidden" name="isDuplicate" value="false">
<input type="hidden" name="action">
<input type="hidden" name="return_module" value="<?php echo $_REQUEST['return_module']; ?>
">
<input type="hidden" name="return_action" value="<?php echo $_REQUEST['return_action']; ?>
">
<input type="hidden" name="return_id" value="<?php echo $_REQUEST['return_id']; ?>
">
<input type="hidden" name="module_tab"> 
<input type="hidden" name="contact_role">
<?php if (( ! empty ( $_REQUEST['return_module'] ) || ! empty ( $_REQUEST['relate_to'] ) ) && ! ( isset ( $_REQUEST['isDuplicate'] ) && $_REQUEST['isDuplicate'] == 'true' )): ?>
<input type="hidden" name="relate_to" value="<?php if ($_REQUEST['return_relationship']): ?><?php echo $_REQUEST['return_relationship']; ?>
<?php elseif ($_REQUEST['relate_to'] && empty ( $_REQUEST['from_dcmenu'] )): ?><?php echo $_REQUEST['relate_to']; ?>
<?php elseif (empty ( $this->_tpl_vars['isDCForm'] ) && empty ( $_REQUEST['from_dcmenu'] )): ?><?php echo $_REQUEST['return_module']; ?>
<?php endif; ?>">
<input type="hidden" name="relate_id" value="<?php echo $_REQUEST['return_id']; ?>
">
<?php endif; ?>
<input type="hidden" name="offset" value="<?php echo $this->_tpl_vars['offset']; ?>
">
<?php $this->assign('place', '_HEADER'); ?> <!-- to be used for id for buttons with custom code in def files-->
<div class="buttons">
<?php if ($this->_tpl_vars['bean']->aclAccess('save')): ?><input title="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_TITLE']; ?>
"  class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_fyn_Stock_out'); disableOnUnloadEditView(); _form.action.value='Save';if(check_form('form_SubpanelQuickCreate_fyn_Stock_out'))return SUGAR.subpanelUtils.inlineSave(_form.id, 'fyn_Stock_out_subpanel_save_button');return false;" type="submit" name="fyn_Stock_out_subpanel_save_button" id="fyn_Stock_out_subpanel_save_button" value="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
"><?php endif; ?> 
<input title="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_TITLE']; ?>
" class="button" onclick="return SUGAR.subpanelUtils.cancelCreate($(this).attr('id'));return false;" type="submit" name="fyn_Stock_out_subpanel_cancel_button" id="fyn_Stock_out_subpanel_cancel_button" value="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>
"> 
<input title="<?php echo $this->_tpl_vars['APP']['LBL_FULL_FORM_BUTTON_TITLE']; ?>
" class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_fyn_Stock_out'); disableOnUnloadEditView(_form); _form.return_action.value='DetailView'; _form.action.value='EditView'; if(typeof(_form.to_pdf)!='undefined') _form.to_pdf.value='0';" type="submit" name="fyn_Stock_out_subpanel_full_form_button" id="fyn_Stock_out_subpanel_full_form_button" value="<?php echo $this->_tpl_vars['APP']['LBL_FULL_FORM_BUTTON_LABEL']; ?>
"> <input type="hidden" name="full_form" value="full_form">
<?php if ($this->_tpl_vars['showVCRControl']): ?>
<button type="button" id="save_and_continue" class="button saveAndContinue" title="<?php echo $this->_tpl_vars['app_strings']['LBL_SAVE_AND_CONTINUE']; ?>
" onClick="SUGAR.saveAndContinue(this);">
<?php echo $this->_tpl_vars['APP']['LBL_SAVE_AND_CONTINUE']; ?>

</button>
<?php endif; ?>
<?php if ($this->_tpl_vars['bean']->aclAccess('detail')): ?><?php if (! empty ( $this->_tpl_vars['fields']['id']['value'] ) && $this->_tpl_vars['isAuditEnabled']): ?><input id="btn_view_change_log" title="<?php echo $this->_tpl_vars['APP']['LNK_VIEW_CHANGE_LOG']; ?>
" class="button" onclick='open_popup("Audit", "600", "400", "&record=<?php echo $this->_tpl_vars['fields']['id']['value']; ?>
&module_name=fyn_Stock_out", true, false,  { "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] } ); return false;' type="button" value="<?php echo $this->_tpl_vars['APP']['LNK_VIEW_CHANGE_LOG']; ?>
"><?php endif; ?><?php endif; ?>
</div>
</td>
<td align='right' class="edit-view-pagination-desktop-container">
<div class="edit-view-pagination edit-view-pagination-desktop">
</div>
</td>
</tr>
</table>
<?php echo smarty_function_sugar_include(array('include' => $this->_tpl_vars['includes']), $this);?>

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
<?php echo smarty_function_sugar_translate(array('label' => 'DEFAULT','module' => 'fyn_Stock_out'), $this);?>

</div>
</a>
</div>
<div class="panel-body panel-collapse collapse in panelContainer" id="detailpanel_-1" data-id="DEFAULT">
<div class="tab-content">
<!-- tab_panel_content.tpl -->
<div class="row edit-view-row">



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_ASSIGNED_TO_NAME">

<?php $this->_tag_stack[] = array('minify', array()); $_block_repeat=true;smarty_block_minify($this->_tag_stack[count($this->_tag_stack)-1][1], null, $this, $_block_repeat);while ($_block_repeat) { ob_start(); ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_ASSIGNED_TO_NAME','module' => 'fyn_Stock_out'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:

<?php $_block_content = ob_get_contents(); ob_end_clean(); $_block_repeat=false;echo smarty_block_minify($this->_tag_stack[count($this->_tag_stack)-1][1], $_block_content, $this, $_block_repeat); }  array_pop($this->_tag_stack); ?>
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="assigned_user_name"  >
<?php echo smarty_function_counter(array('name' => 'panelFieldCount','print' => false), $this);?>


<input type="text" name="<?php echo $this->_tpl_vars['fields']['assigned_user_name']['name']; ?>
" class="sqsEnabled" tabindex="0" id="<?php echo $this->_tpl_vars['fields']['assigned_user_name']['name']; ?>
" size="" value="<?php echo $this->_tpl_vars['fields']['assigned_user_name']['value']; ?>
" title='' autocomplete="off"  	 >
<input type="hidden" name="<?php echo $this->_tpl_vars['fields']['assigned_user_name']['id_name']; ?>
" 
id="<?php echo $this->_tpl_vars['fields']['assigned_user_name']['id_name']; ?>
" 
value="<?php echo $this->_tpl_vars['fields']['assigned_user_id']['value']; ?>
">
<span class="id-ff multiple">
<button type="button" name="btn_<?php echo $this->_tpl_vars['fields']['assigned_user_name']['name']; ?>
" id="btn_<?php echo $this->_tpl_vars['fields']['assigned_user_name']['name']; ?>
" tabindex="0" title="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_ACCESSKEY_SELECT_USERS_TITLE'), $this);?>
" class="button firstChild" value="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_ACCESSKEY_SELECT_USERS_LABEL'), $this);?>
"
onclick='open_popup(
"<?php echo $this->_tpl_vars['fields']['assigned_user_name']['module']; ?>
", 
600, 
400, 
"", 
true, 
false, 
<?php echo '{"call_back_function":"set_return","form_name":"form_SubpanelQuickCreate_fyn_Stock_out","field_to_name_array":{"id":"assigned_user_id","user_name":"assigned_user_name"}}'; ?>
, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_<?php echo $this->_tpl_vars['fields']['assigned_user_name']['name']; ?>
" id="btn_clr_<?php echo $this->_tpl_vars['fields']['assigned_user_name']['name']; ?>
" tabindex="0" title="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_ACCESSKEY_CLEAR_USERS_TITLE'), $this);?>
"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '<?php echo $this->_tpl_vars['fields']['assigned_user_name']['name']; ?>
', '<?php echo $this->_tpl_vars['fields']['assigned_user_name']['id_name']; ?>
');"  value="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_ACCESSKEY_CLEAR_USERS_LABEL'), $this);?>
" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['<?php echo $this->_tpl_vars['form_name']; ?>
_<?php echo $this->_tpl_vars['fields']['assigned_user_name']['name']; ?>
']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_QUANTITY">

<?php $this->_tag_stack[] = array('minify', array()); $_block_repeat=true;smarty_block_minify($this->_tag_stack[count($this->_tag_stack)-1][1], null, $this, $_block_repeat);while ($_block_repeat) { ob_start(); ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_QUANTITY','module' => 'fyn_Stock_out'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:

<span class="required">*</span>
<?php $_block_content = ob_get_contents(); ob_end_clean(); $_block_repeat=false;echo smarty_block_minify($this->_tag_stack[count($this->_tag_stack)-1][1], $_block_content, $this, $_block_repeat); }  array_pop($this->_tag_stack); ?>
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="quantity"  >
<?php echo smarty_function_counter(array('name' => 'panelFieldCount','print' => false), $this);?>


<?php if (strlen ( $this->_tpl_vars['fields']['quantity']['value'] ) <= 0): ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['quantity']['default_value']); ?>
<?php else: ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['quantity']['value']); ?>
<?php endif; ?>  
<input type='text' name='<?php echo $this->_tpl_vars['fields']['quantity']['name']; ?>
' 
id='<?php echo $this->_tpl_vars['fields']['quantity']['name']; ?>
' size='30' 
maxlength='255' 
value='<?php echo $this->_tpl_vars['value']; ?>
' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_FYN_QR_CODE_BOXES_FYN_STOCK_OUT_1_FROM_FYN_QR_CODE_BOXES_TITLE">

<?php $this->_tag_stack[] = array('minify', array()); $_block_repeat=true;smarty_block_minify($this->_tag_stack[count($this->_tag_stack)-1][1], null, $this, $_block_repeat);while ($_block_repeat) { ob_start(); ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_FYN_QR_CODE_BOXES_FYN_STOCK_OUT_1_FROM_FYN_QR_CODE_BOXES_TITLE','module' => 'fyn_Stock_out'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:

<?php $_block_content = ob_get_contents(); ob_end_clean(); $_block_repeat=false;echo smarty_block_minify($this->_tag_stack[count($this->_tag_stack)-1][1], $_block_content, $this, $_block_repeat); }  array_pop($this->_tag_stack); ?>
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="fyn_qr_code_boxes_fyn_stock_out_1_name"  >
<?php echo smarty_function_counter(array('name' => 'panelFieldCount','print' => false), $this);?>


<input type="text" name="<?php echo $this->_tpl_vars['fields']['fyn_qr_code_boxes_fyn_stock_out_1_name']['name']; ?>
" class="sqsEnabled" tabindex="0" id="<?php echo $this->_tpl_vars['fields']['fyn_qr_code_boxes_fyn_stock_out_1_name']['name']; ?>
" size="" value="<?php echo $this->_tpl_vars['fields']['fyn_qr_code_boxes_fyn_stock_out_1_name']['value']; ?>
" title='' autocomplete="off"  	 >
<input type="hidden" name="<?php echo $this->_tpl_vars['fields']['fyn_qr_code_boxes_fyn_stock_out_1_name']['id_name']; ?>
" 
id="<?php echo $this->_tpl_vars['fields']['fyn_qr_code_boxes_fyn_stock_out_1_name']['id_name']; ?>
" 
value="<?php echo $this->_tpl_vars['fields']['fyn_qr_code_boxes_fyn_stock_out_1fyn_qr_code_boxes_ida']['value']; ?>
">
<span class="id-ff multiple">
<button type="button" name="btn_<?php echo $this->_tpl_vars['fields']['fyn_qr_code_boxes_fyn_stock_out_1_name']['name']; ?>
" id="btn_<?php echo $this->_tpl_vars['fields']['fyn_qr_code_boxes_fyn_stock_out_1_name']['name']; ?>
" tabindex="0" title="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_SELECT_BUTTON_TITLE'), $this);?>
" class="button firstChild" value="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_SELECT_BUTTON_LABEL'), $this);?>
"
onclick='open_popup(
"<?php echo $this->_tpl_vars['fields']['fyn_qr_code_boxes_fyn_stock_out_1_name']['module']; ?>
", 
600, 
400, 
"", 
true, 
false, 
<?php echo '{"call_back_function":"set_return","form_name":"form_SubpanelQuickCreate_fyn_Stock_out","field_to_name_array":{"id":"fyn_qr_code_boxes_fyn_stock_out_1fyn_qr_code_boxes_ida","name":"fyn_qr_code_boxes_fyn_stock_out_1_name"}}'; ?>
, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_<?php echo $this->_tpl_vars['fields']['fyn_qr_code_boxes_fyn_stock_out_1_name']['name']; ?>
" id="btn_clr_<?php echo $this->_tpl_vars['fields']['fyn_qr_code_boxes_fyn_stock_out_1_name']['name']; ?>
" tabindex="0" title="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_ACCESSKEY_CLEAR_RELATE_TITLE'), $this);?>
"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '<?php echo $this->_tpl_vars['fields']['fyn_qr_code_boxes_fyn_stock_out_1_name']['name']; ?>
', '<?php echo $this->_tpl_vars['fields']['fyn_qr_code_boxes_fyn_stock_out_1_name']['id_name']; ?>
');"  value="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_ACCESSKEY_CLEAR_RELATE_LABEL'), $this);?>
" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['<?php echo $this->_tpl_vars['form_name']; ?>
_<?php echo $this->_tpl_vars['fields']['fyn_qr_code_boxes_fyn_stock_out_1_name']['name']; ?>
']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_AOS_INVOICES_FYN_STOCK_OUT_1_FROM_AOS_INVOICES_TITLE">

<?php $this->_tag_stack[] = array('minify', array()); $_block_repeat=true;smarty_block_minify($this->_tag_stack[count($this->_tag_stack)-1][1], null, $this, $_block_repeat);while ($_block_repeat) { ob_start(); ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_AOS_INVOICES_FYN_STOCK_OUT_1_FROM_AOS_INVOICES_TITLE','module' => 'fyn_Stock_out'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:

<?php $_block_content = ob_get_contents(); ob_end_clean(); $_block_repeat=false;echo smarty_block_minify($this->_tag_stack[count($this->_tag_stack)-1][1], $_block_content, $this, $_block_repeat); }  array_pop($this->_tag_stack); ?>
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="aos_invoices_fyn_stock_out_1_name"  >
<?php echo smarty_function_counter(array('name' => 'panelFieldCount','print' => false), $this);?>


<input type="text" name="<?php echo $this->_tpl_vars['fields']['aos_invoices_fyn_stock_out_1_name']['name']; ?>
" class="sqsEnabled" tabindex="0" id="<?php echo $this->_tpl_vars['fields']['aos_invoices_fyn_stock_out_1_name']['name']; ?>
" size="" value="<?php echo $this->_tpl_vars['fields']['aos_invoices_fyn_stock_out_1_name']['value']; ?>
" title='' autocomplete="off"  	 >
<input type="hidden" name="<?php echo $this->_tpl_vars['fields']['aos_invoices_fyn_stock_out_1_name']['id_name']; ?>
" 
id="<?php echo $this->_tpl_vars['fields']['aos_invoices_fyn_stock_out_1_name']['id_name']; ?>
" 
value="<?php echo $this->_tpl_vars['fields']['aos_invoices_fyn_stock_out_1aos_invoices_ida']['value']; ?>
">
<span class="id-ff multiple">
<button type="button" name="btn_<?php echo $this->_tpl_vars['fields']['aos_invoices_fyn_stock_out_1_name']['name']; ?>
" id="btn_<?php echo $this->_tpl_vars['fields']['aos_invoices_fyn_stock_out_1_name']['name']; ?>
" tabindex="0" title="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_SELECT_BUTTON_TITLE'), $this);?>
" class="button firstChild" value="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_SELECT_BUTTON_LABEL'), $this);?>
"
onclick='open_popup(
"<?php echo $this->_tpl_vars['fields']['aos_invoices_fyn_stock_out_1_name']['module']; ?>
", 
600, 
400, 
"", 
true, 
false, 
<?php echo '{"call_back_function":"set_return","form_name":"form_SubpanelQuickCreate_fyn_Stock_out","field_to_name_array":{"id":"aos_invoices_fyn_stock_out_1aos_invoices_ida","name":"aos_invoices_fyn_stock_out_1_name"}}'; ?>
, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_<?php echo $this->_tpl_vars['fields']['aos_invoices_fyn_stock_out_1_name']['name']; ?>
" id="btn_clr_<?php echo $this->_tpl_vars['fields']['aos_invoices_fyn_stock_out_1_name']['name']; ?>
" tabindex="0" title="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_ACCESSKEY_CLEAR_RELATE_TITLE'), $this);?>
"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '<?php echo $this->_tpl_vars['fields']['aos_invoices_fyn_stock_out_1_name']['name']; ?>
', '<?php echo $this->_tpl_vars['fields']['aos_invoices_fyn_stock_out_1_name']['id_name']; ?>
');"  value="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_ACCESSKEY_CLEAR_RELATE_LABEL'), $this);?>
" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['<?php echo $this->_tpl_vars['form_name']; ?>
_<?php echo $this->_tpl_vars['fields']['aos_invoices_fyn_stock_out_1_name']['name']; ?>
']) != 'undefined'",
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

<?php $this->_tag_stack[] = array('minify', array()); $_block_repeat=true;smarty_block_minify($this->_tag_stack[count($this->_tag_stack)-1][1], null, $this, $_block_repeat);while ($_block_repeat) { ob_start(); ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_AOS_PRODUCTS_FYN_STOCK_OUT_1_FROM_AOS_PRODUCTS_TITLE','module' => 'fyn_Stock_out'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:

<?php $_block_content = ob_get_contents(); ob_end_clean(); $_block_repeat=false;echo smarty_block_minify($this->_tag_stack[count($this->_tag_stack)-1][1], $_block_content, $this, $_block_repeat); }  array_pop($this->_tag_stack); ?>
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="aos_products_fyn_stock_out_1_name" colspan='3' >
<?php echo smarty_function_counter(array('name' => 'panelFieldCount','print' => false), $this);?>


<input type="text" name="<?php echo $this->_tpl_vars['fields']['aos_products_fyn_stock_out_1_name']['name']; ?>
" class="sqsEnabled" tabindex="0" id="<?php echo $this->_tpl_vars['fields']['aos_products_fyn_stock_out_1_name']['name']; ?>
" size="" value="<?php echo $this->_tpl_vars['fields']['aos_products_fyn_stock_out_1_name']['value']; ?>
" title='' autocomplete="off"  	 >
<input type="hidden" name="<?php echo $this->_tpl_vars['fields']['aos_products_fyn_stock_out_1_name']['id_name']; ?>
" 
id="<?php echo $this->_tpl_vars['fields']['aos_products_fyn_stock_out_1_name']['id_name']; ?>
" 
value="<?php echo $this->_tpl_vars['fields']['aos_products_fyn_stock_out_1aos_products_ida']['value']; ?>
">
<span class="id-ff multiple">
<button type="button" name="btn_<?php echo $this->_tpl_vars['fields']['aos_products_fyn_stock_out_1_name']['name']; ?>
" id="btn_<?php echo $this->_tpl_vars['fields']['aos_products_fyn_stock_out_1_name']['name']; ?>
" tabindex="0" title="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_SELECT_BUTTON_TITLE'), $this);?>
" class="button firstChild" value="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_SELECT_BUTTON_LABEL'), $this);?>
"
onclick='open_popup(
"<?php echo $this->_tpl_vars['fields']['aos_products_fyn_stock_out_1_name']['module']; ?>
", 
600, 
400, 
"", 
true, 
false, 
<?php echo '{"call_back_function":"set_return","form_name":"form_SubpanelQuickCreate_fyn_Stock_out","field_to_name_array":{"id":"aos_products_fyn_stock_out_1aos_products_ida","name":"aos_products_fyn_stock_out_1_name"}}'; ?>
, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_<?php echo $this->_tpl_vars['fields']['aos_products_fyn_stock_out_1_name']['name']; ?>
" id="btn_clr_<?php echo $this->_tpl_vars['fields']['aos_products_fyn_stock_out_1_name']['name']; ?>
" tabindex="0" title="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_ACCESSKEY_CLEAR_RELATE_TITLE'), $this);?>
"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '<?php echo $this->_tpl_vars['fields']['aos_products_fyn_stock_out_1_name']['name']; ?>
', '<?php echo $this->_tpl_vars['fields']['aos_products_fyn_stock_out_1_name']['id_name']; ?>
');"  value="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_ACCESSKEY_CLEAR_RELATE_LABEL'), $this);?>
" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['<?php echo $this->_tpl_vars['form_name']; ?>
_<?php echo $this->_tpl_vars['fields']['aos_products_fyn_stock_out_1_name']['name']; ?>
']) != 'undefined'",
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
    var _form_id = '<?php echo $this->_tpl_vars['form_id']; ?>
';
    <?php echo '
    SUGAR.util.doWhen(function(){
        _form_id = (_form_id == \'\') ? \'EditView\' : _form_id;
        return document.getElementById(_form_id) != null;
    }, SUGAR.themes.actionMenu);
    '; ?>

</script>
<?php $this->assign('place', '_FOOTER'); ?> <!-- to be used for id for buttons with custom code in def files-->
<div class="buttons">
<?php if ($this->_tpl_vars['bean']->aclAccess('save')): ?><input title="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_TITLE']; ?>
"  class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_fyn_Stock_out'); disableOnUnloadEditView(); _form.action.value='Save';if(check_form('form_SubpanelQuickCreate_fyn_Stock_out'))return SUGAR.subpanelUtils.inlineSave(_form.id, 'fyn_Stock_out_subpanel_save_button');return false;" type="submit" name="fyn_Stock_out_subpanel_save_button" id="fyn_Stock_out_subpanel_save_button" value="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
"><?php endif; ?> 
<input title="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_TITLE']; ?>
" class="button" onclick="return SUGAR.subpanelUtils.cancelCreate($(this).attr('id'));return false;" type="submit" name="fyn_Stock_out_subpanel_cancel_button" id="fyn_Stock_out_subpanel_cancel_button" value="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>
"> 
<input title="<?php echo $this->_tpl_vars['APP']['LBL_FULL_FORM_BUTTON_TITLE']; ?>
" class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_fyn_Stock_out'); disableOnUnloadEditView(_form); _form.return_action.value='DetailView'; _form.action.value='EditView'; if(typeof(_form.to_pdf)!='undefined') _form.to_pdf.value='0';" type="submit" name="fyn_Stock_out_subpanel_full_form_button" id="fyn_Stock_out_subpanel_full_form_button" value="<?php echo $this->_tpl_vars['APP']['LBL_FULL_FORM_BUTTON_LABEL']; ?>
"> <input type="hidden" name="full_form" value="full_form">
<?php if ($this->_tpl_vars['showVCRControl']): ?>
<button type="button" id="save_and_continue" class="button saveAndContinue" title="<?php echo $this->_tpl_vars['app_strings']['LBL_SAVE_AND_CONTINUE']; ?>
" onClick="SUGAR.saveAndContinue(this);">
<?php echo $this->_tpl_vars['APP']['LBL_SAVE_AND_CONTINUE']; ?>

</button>
<?php endif; ?>
<?php if ($this->_tpl_vars['bean']->aclAccess('detail')): ?><?php if (! empty ( $this->_tpl_vars['fields']['id']['value'] ) && $this->_tpl_vars['isAuditEnabled']): ?><input id="btn_view_change_log" title="<?php echo $this->_tpl_vars['APP']['LNK_VIEW_CHANGE_LOG']; ?>
" class="button" onclick='open_popup("Audit", "600", "400", "&record=<?php echo $this->_tpl_vars['fields']['id']['value']; ?>
&module_name=fyn_Stock_out", true, false,  { "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] } ); return false;' type="button" value="<?php echo $this->_tpl_vars['APP']['LNK_VIEW_CHANGE_LOG']; ?>
"><?php endif; ?><?php endif; ?>
</div>
</form>
<?php echo $this->_tpl_vars['set_focus_block']; ?>

<script>SUGAR.util.doWhen("document.getElementById('EditView') != null",
        function(){SUGAR.util.buildAccessKeyLabels();});
</script>
<script type="text/javascript">
YAHOO.util.Event.onContentReady("form_SubpanelQuickCreate_fyn_Stock_out",
    function () { initEditView(document.forms.form_SubpanelQuickCreate_fyn_Stock_out) });
//window.setTimeout(, 100);
window.onbeforeunload = function () { return onUnloadEditView(); };
// bug 55468 -- IE is too aggressive with onUnload event
if ($.browser.msie) {
$(document).ready(function() {
    $(".collapseLink,.expandLink").click(function (e) { e.preventDefault(); });
  });
}
</script>
<?php echo '
<script type="text/javascript">

    var selectTab = function(tab) {
        $(\'#EditView_tabs div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER\').hide();
        $(\'#EditView_tabs div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER\').eq(tab).show().addClass(\'active\').addClass(\'in\');
    };

    var selectTabOnError = function(tab) {
        selectTab(tab);
        $(\'#EditView_tabs ul.nav.nav-tabs li\').removeClass(\'active\');
        $(\'#EditView_tabs ul.nav.nav-tabs li a\').css(\'color\', \'\');

        $(\'#EditView_tabs ul.nav.nav-tabs li\').eq(tab).find(\'a\').first().css(\'color\', \'red\');
        $(\'#EditView_tabs ul.nav.nav-tabs li\').eq(tab).addClass(\'active\');

    };

    var selectTabOnErrorInputHandle = function(inputHandle) {
        var tab = $(inputHandle).closest(\'.tab-pane-NOBOOTSTRAPTOGGLER\').attr(\'id\').match(/^detailpanel_(.*)$/)[1];
        selectTabOnError(tab);
    };


    $(function(){
        $(\'#EditView_tabs ul.nav.nav-tabs li > a[data-toggle="tab"]\').click(function(e){
            if(typeof $(this).parent().find(\'a\').first().attr(\'id\') != \'undefined\') {
                var tab = parseInt($(this).parent().find(\'a\').first().attr(\'id\').match(/^tab(.)*$/)[1]);
                selectTab(tab);
            }
        });

        $(\'a[data-toggle="collapse-edit"]\').click(function(e){
            if($(this).hasClass(\'collapsed\')) {
              // Expand panel
                // Change style of .panel-header
                $(this).removeClass(\'collapsed\');
                // Expand .panel-body
                $(this).parents(\'.panel\').find(\'.panel-body\').removeClass(\'in\').addClass(\'in\');
            } else {
              // Collapse panel
                // Change style of .panel-header
                $(this).addClass(\'collapsed\');
                // Collapse .panel-body
                $(this).parents(\'.panel\').find(\'.panel-body\').removeClass(\'in\').removeClass(\'in\');
            }
        });
    });

    </script>
'; ?>
<?php echo '
<script type="text/javascript">
addForm(\'form_SubpanelQuickCreate_fyn_Stock_out\');addToValidate(\'form_SubpanelQuickCreate_fyn_Stock_out\', \'name\', \'name\', false,\''; ?>
<?php echo smarty_function_sugar_translate(array('label' => 'LBL_NAME','module' => 'fyn_Stock_out','for_js' => true), $this);?>
<?php echo '\' );
addToValidate(\'form_SubpanelQuickCreate_fyn_Stock_out\', \'date_entered_date\', \'date\', false,\'Date Created\' );
addToValidate(\'form_SubpanelQuickCreate_fyn_Stock_out\', \'date_modified_date\', \'date\', false,\'Date Modified\' );
addToValidate(\'form_SubpanelQuickCreate_fyn_Stock_out\', \'modified_user_id\', \'assigned_user_name\', false,\''; ?>
<?php echo smarty_function_sugar_translate(array('label' => 'LBL_MODIFIED','module' => 'fyn_Stock_out','for_js' => true), $this);?>
<?php echo '\' );
addToValidate(\'form_SubpanelQuickCreate_fyn_Stock_out\', \'modified_by_name\', \'relate\', false,\''; ?>
<?php echo smarty_function_sugar_translate(array('label' => 'LBL_MODIFIED_NAME','module' => 'fyn_Stock_out','for_js' => true), $this);?>
<?php echo '\' );
addToValidate(\'form_SubpanelQuickCreate_fyn_Stock_out\', \'created_by\', \'assigned_user_name\', false,\''; ?>
<?php echo smarty_function_sugar_translate(array('label' => 'LBL_CREATED','module' => 'fyn_Stock_out','for_js' => true), $this);?>
<?php echo '\' );
addToValidate(\'form_SubpanelQuickCreate_fyn_Stock_out\', \'created_by_name\', \'relate\', false,\''; ?>
<?php echo smarty_function_sugar_translate(array('label' => 'LBL_CREATED','module' => 'fyn_Stock_out','for_js' => true), $this);?>
<?php echo '\' );
addToValidate(\'form_SubpanelQuickCreate_fyn_Stock_out\', \'description\', \'text\', false,\''; ?>
<?php echo smarty_function_sugar_translate(array('label' => 'LBL_DESCRIPTION','module' => 'fyn_Stock_out','for_js' => true), $this);?>
<?php echo '\' );
addToValidate(\'form_SubpanelQuickCreate_fyn_Stock_out\', \'deleted\', \'bool\', false,\''; ?>
<?php echo smarty_function_sugar_translate(array('label' => 'LBL_DELETED','module' => 'fyn_Stock_out','for_js' => true), $this);?>
<?php echo '\' );
addToValidate(\'form_SubpanelQuickCreate_fyn_Stock_out\', \'assigned_user_id\', \'relate\', false,\''; ?>
<?php echo smarty_function_sugar_translate(array('label' => 'LBL_ASSIGNED_TO_ID','module' => 'fyn_Stock_out','for_js' => true), $this);?>
<?php echo '\' );
addToValidate(\'form_SubpanelQuickCreate_fyn_Stock_out\', \'assigned_user_name\', \'relate\', false,\''; ?>
<?php echo smarty_function_sugar_translate(array('label' => 'LBL_ASSIGNED_TO_NAME','module' => 'fyn_Stock_out','for_js' => true), $this);?>
<?php echo '\' );
addToValidate(\'form_SubpanelQuickCreate_fyn_Stock_out\', \'quantity\', \'varchar\', true,\''; ?>
<?php echo smarty_function_sugar_translate(array('label' => 'LBL_QUANTITY','module' => 'fyn_Stock_out','for_js' => true), $this);?>
<?php echo '\' );
addToValidate(\'form_SubpanelQuickCreate_fyn_Stock_out\', \'fyn_vehicle_id_c\', \'id\', false,\''; ?>
<?php echo smarty_function_sugar_translate(array('label' => 'LBL_SELECT_VEHICLE_FYN_VEHICLE_ID','module' => 'fyn_Stock_out','for_js' => true), $this);?>
<?php echo '\' );
addToValidate(\'form_SubpanelQuickCreate_fyn_Stock_out\', \'fyn_qr_code_boxes_fyn_stock_out_1_name\', \'relate\', false,\''; ?>
<?php echo smarty_function_sugar_translate(array('label' => 'LBL_FYN_QR_CODE_BOXES_FYN_STOCK_OUT_1_FROM_FYN_QR_CODE_BOXES_TITLE','module' => 'fyn_Stock_out','for_js' => true), $this);?>
<?php echo '\' );
addToValidate(\'form_SubpanelQuickCreate_fyn_Stock_out\', \'destination_c\', \'enum\', false,\''; ?>
<?php echo smarty_function_sugar_translate(array('label' => 'LBL_DESTINATION','module' => 'fyn_Stock_out','for_js' => true), $this);?>
<?php echo '\' );
addToValidate(\'form_SubpanelQuickCreate_fyn_Stock_out\', \'aos_products_fyn_stock_out_1_name\', \'relate\', false,\''; ?>
<?php echo smarty_function_sugar_translate(array('label' => 'LBL_AOS_PRODUCTS_FYN_STOCK_OUT_1_FROM_AOS_PRODUCTS_TITLE','module' => 'fyn_Stock_out','for_js' => true), $this);?>
<?php echo '\' );
addToValidate(\'form_SubpanelQuickCreate_fyn_Stock_out\', \'aos_invoices_fyn_stock_out_1_name\', \'relate\', false,\''; ?>
<?php echo smarty_function_sugar_translate(array('label' => 'LBL_AOS_INVOICES_FYN_STOCK_OUT_1_FROM_AOS_INVOICES_TITLE','module' => 'fyn_Stock_out','for_js' => true), $this);?>
<?php echo '\' );
addToValidate(\'form_SubpanelQuickCreate_fyn_Stock_out\', \'do_not_delete_c\', \'varchar\', false,\''; ?>
<?php echo smarty_function_sugar_translate(array('label' => 'LBL_DO_NOT_DELETE','module' => 'fyn_Stock_out','for_js' => true), $this);?>
<?php echo '\' );
addToValidate(\'form_SubpanelQuickCreate_fyn_Stock_out\', \'select_vehicle_c\', \'relate\', false,\''; ?>
<?php echo smarty_function_sugar_translate(array('label' => 'LBL_SELECT_VEHICLE','module' => 'fyn_Stock_out','for_js' => true), $this);?>
<?php echo '\' );
addToValidateBinaryDependency(\'form_SubpanelQuickCreate_fyn_Stock_out\', \'assigned_user_name\', \'alpha\', false,\''; ?>
<?php echo smarty_function_sugar_translate(array('label' => 'ERR_SQS_NO_MATCH_FIELD','module' => 'fyn_Stock_out','for_js' => true), $this);?>
<?php echo ': '; ?>
<?php echo smarty_function_sugar_translate(array('label' => 'LBL_ASSIGNED_TO','module' => 'fyn_Stock_out','for_js' => true), $this);?>
<?php echo '\', \'assigned_user_id\' );
addToValidateBinaryDependency(\'form_SubpanelQuickCreate_fyn_Stock_out\', \'fyn_qr_code_boxes_fyn_stock_out_1_name\', \'alpha\', false,\''; ?>
<?php echo smarty_function_sugar_translate(array('label' => 'ERR_SQS_NO_MATCH_FIELD','module' => 'fyn_Stock_out','for_js' => true), $this);?>
<?php echo ': '; ?>
<?php echo smarty_function_sugar_translate(array('label' => 'LBL_FYN_QR_CODE_BOXES_FYN_STOCK_OUT_1_FROM_FYN_QR_CODE_BOXES_TITLE','module' => 'fyn_Stock_out','for_js' => true), $this);?>
<?php echo '\', \'fyn_qr_code_boxes_fyn_stock_out_1fyn_qr_code_boxes_ida\' );
addToValidateBinaryDependency(\'form_SubpanelQuickCreate_fyn_Stock_out\', \'aos_products_fyn_stock_out_1_name\', \'alpha\', false,\''; ?>
<?php echo smarty_function_sugar_translate(array('label' => 'ERR_SQS_NO_MATCH_FIELD','module' => 'fyn_Stock_out','for_js' => true), $this);?>
<?php echo ': '; ?>
<?php echo smarty_function_sugar_translate(array('label' => 'LBL_AOS_PRODUCTS_FYN_STOCK_OUT_1_FROM_AOS_PRODUCTS_TITLE','module' => 'fyn_Stock_out','for_js' => true), $this);?>
<?php echo '\', \'aos_products_fyn_stock_out_1aos_products_ida\' );
addToValidateBinaryDependency(\'form_SubpanelQuickCreate_fyn_Stock_out\', \'aos_invoices_fyn_stock_out_1_name\', \'alpha\', false,\''; ?>
<?php echo smarty_function_sugar_translate(array('label' => 'ERR_SQS_NO_MATCH_FIELD','module' => 'fyn_Stock_out','for_js' => true), $this);?>
<?php echo ': '; ?>
<?php echo smarty_function_sugar_translate(array('label' => 'LBL_AOS_INVOICES_FYN_STOCK_OUT_1_FROM_AOS_INVOICES_TITLE','module' => 'fyn_Stock_out','for_js' => true), $this);?>
<?php echo '\', \'aos_invoices_fyn_stock_out_1aos_invoices_ida\' );
</script><script language="javascript">if(typeof sqs_objects == \'undefined\'){var sqs_objects = new Array;}sqs_objects[\'form_SubpanelQuickCreate_fyn_Stock_out_assigned_user_name\']={"form":"form_SubpanelQuickCreate_fyn_Stock_out","method":"get_user_array","field_list":["user_name","id"],"populate_list":["assigned_user_name","assigned_user_id"],"required_list":["assigned_user_id"],"conditions":[{"name":"user_name","op":"like_custom","end":"%","value":""}],"limit":"30","no_match_text":"No Match"};sqs_objects[\'form_SubpanelQuickCreate_fyn_Stock_out_fyn_qr_code_boxes_fyn_stock_out_1_name\']={"form":"form_SubpanelQuickCreate_fyn_Stock_out","method":"query","modules":["fyn_QR_CODE_BOXES"],"group":"or","field_list":["name","id"],"populate_list":["fyn_qr_code_boxes_fyn_stock_out_1_name","fyn_qr_code_boxes_fyn_stock_out_1fyn_qr_code_boxes_ida"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};sqs_objects[\'form_SubpanelQuickCreate_fyn_Stock_out_aos_invoices_fyn_stock_out_1_name\']={"form":"form_SubpanelQuickCreate_fyn_Stock_out","method":"query","modules":["AOS_Invoices"],"group":"or","field_list":["name","id"],"populate_list":["aos_invoices_fyn_stock_out_1_name","aos_invoices_fyn_stock_out_1aos_invoices_ida"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};sqs_objects[\'form_SubpanelQuickCreate_fyn_Stock_out_aos_products_fyn_stock_out_1_name\']={"form":"form_SubpanelQuickCreate_fyn_Stock_out","method":"query","modules":["AOS_Products"],"group":"or","field_list":["name","id"],"populate_list":["aos_products_fyn_stock_out_1_name","aos_products_fyn_stock_out_1aos_products_ida"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};</script>'; ?>
