

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
{$PAGINATION}
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
{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}" accessKey="{$APP.LBL_SAVE_BUTTON_KEY}" class="button primary" onclick="var _form = document.getElementById('EditView'); {if $isDuplicate}_form.return_id.value=''; {/if}_form.action.value='Save'; if(check_form('EditView'))SUGAR.ajaxUI.submitForm(_form);return false;" type="submit" name="button" value="{$APP.LBL_SAVE_BUTTON_LABEL}" id="SAVE">{/if} 
{if !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && !empty($smarty.request.return_id))}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=DetailView&module={$smarty.request.return_module|escape:"url"}&record={$smarty.request.return_id|escape:"url"}'); return false;" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" type="button" id="CANCEL"> {elseif !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && !empty($fields.id.value))}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=DetailView&module={$smarty.request.return_module|escape:"url"}&record={$fields.id.value}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {elseif !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && empty($fields.id.value)) && empty($smarty.request.return_id)}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=ListView&module={$smarty.request.return_module|escape:"url"}&record={$fields.id.value}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {elseif !empty($smarty.request.return_action) && !empty($smarty.request.return_module)}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action={$smarty.request.return_action}&module={$smarty.request.return_module|escape:"url"}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {elseif empty($smarty.request.return_action) || empty($smarty.request.return_id) && !empty($fields.id.value)}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=index&module=fyn_QR_CODE_PALLETTE'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {else}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=index&module={$smarty.request.return_module|escape:"url"}&record={$smarty.request.return_id|escape:"url"}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {/if}
{if $showVCRControl}
<button type="button" id="save_and_continue" class="button saveAndContinue" title="{$app_strings.LBL_SAVE_AND_CONTINUE}" onClick="SUGAR.saveAndContinue(this);">
{$APP.LBL_SAVE_AND_CONTINUE}
</button>
{/if}
{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=fyn_QR_CODE_PALLETTE", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}
</div>
</td>
<td align='right' class="edit-view-pagination-desktop-container">
<div class="edit-view-pagination edit-view-pagination-desktop">
{$PAGINATION}
</div>
</td>
</tr>
</table>
{sugar_include include=$includes}
<div id="EditView_tabs">

<ul class="nav nav-tabs">


<li role="presentation" class="active">
<a id="tab0" data-toggle="tab" class="hidden-xs">
{sugar_translate label='DEFAULT' module='fyn_QR_CODE_PALLETTE'}
</a>


<!-- Counting Tabs 3-->
<a id="xstab0" href="#" class="visible-xs first-tab-xs dropdown-toggle" data-toggle="dropdown">
{sugar_translate label='DEFAULT' module='fyn_QR_CODE_PALLETTE'}
</a>
<ul id="first-tab-menu-xs" class="dropdown-menu">
<li role="presentation">
<a id="tab0" data-toggle="tab" onclick="changeFirstTab(this, 'tab-content-0');">
{sugar_translate label='DEFAULT' module='fyn_QR_CODE_PALLETTE'}
</a>
</li>
<li role="presentation">
<a id="tab1" data-toggle="tab" onclick="changeFirstTab(this, 'tab-content-1');">
{sugar_translate label='LBL_EDITVIEW_PANEL3' module='fyn_QR_CODE_PALLETTE'}
</a>
</li>
<li role="presentation">
<a id="tab2" data-toggle="tab" onclick="changeFirstTab(this, 'tab-content-2');">
{sugar_translate label='LBL_EDITVIEW_PANEL4' module='fyn_QR_CODE_PALLETTE'}
</a>
</li>
<li role="presentation">
<a id="tab3" data-toggle="tab" onclick="changeFirstTab(this, 'tab-content-3');">
{sugar_translate label='LBL_EDITVIEW_PANEL5' module='fyn_QR_CODE_PALLETTE'}
</a>
</li>
</ul>
</li>


<li role="presentation" class="hidden-xs">
<a id="tab1"  data-toggle="tab">
{sugar_translate label='LBL_EDITVIEW_PANEL3' module='fyn_QR_CODE_PALLETTE'}
</a>
</li>


<li role="presentation" class="hidden-xs">
<a id="tab2"  data-toggle="tab">
{sugar_translate label='LBL_EDITVIEW_PANEL4' module='fyn_QR_CODE_PALLETTE'}
</a>
</li>


<li role="presentation" class="hidden-xs">
<a id="tab3"  data-toggle="tab">
{sugar_translate label='LBL_EDITVIEW_PANEL5' module='fyn_QR_CODE_PALLETTE'}
</a>
</li>
</ul>
<div class="clearfix"></div>
<div class="tab-content">

<div class="tab-pane-NOBOOTSTRAPTOGGLER active fade in" id='tab-content-0'>
<!-- tab_panel_content.tpl -->
<div class="row edit-view-row">



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_STATUS">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_STATUS' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="enum" field="status"  >
{counter name="panelFieldCount" print=false}

{if !isset($config.enable_autocomplete) || $config.enable_autocomplete==false}
<select name="{$fields.status.name}" 
id="{$fields.status.name}" 
title=''       
>
{if isset($fields.status.value) && $fields.status.value != ''}
{html_options options=$fields.status.options selected=$fields.status.value}
{else}
{html_options options=$fields.status.options selected=$fields.status.default}
{/if}
</select>
{else}
{assign var="field_options" value=$fields.status.options }
{capture name="field_val"}{$fields.status.value}{/capture}
{assign var="field_val" value=$smarty.capture.field_val}
{capture name="ac_key"}{$fields.status.name}{/capture}
{assign var="ac_key" value=$smarty.capture.ac_key}
<select style='display:none' name="{$fields.status.name}" 
id="{$fields.status.name}" 
title=''          
>
{if isset($fields.status.value) && $fields.status.value != ''}
{html_options options=$fields.status.options selected=$fields.status.value}
{else}
{html_options options=$fields.status.options selected=$fields.status.default}
{/if}
</select>
<input
id="{$fields.status.name}-input"
name="{$fields.status.name}-input"
size="30"
value="{$field_val|lookup:$field_options}"
type="text" style="vertical-align: top;">
<span class="id-ff multiple">
<button type="button"><img src="{sugar_getimagepath file="id-ff-down.png"}" id="{$fields.status.name}-image"></button><button type="button"
id="btn-clear-{$fields.status.name}-input"
title="Clear"
onclick="SUGAR.clearRelateField(this.form, '{$fields.status.name}-input', '{$fields.status.name}');sync_{$fields.status.name}()"><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
{literal}
<script>
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal} = [];
	{/literal}

			{literal}
		(function (){
			var selectElem = document.getElementById("{/literal}{$fields.status.name}{literal}");
			
			if (typeof select_defaults =="undefined")
				select_defaults = [];
			
			select_defaults[selectElem.id] = {key:selectElem.value,text:''};

			//get default
			for (i=0;i<selectElem.options.length;i++){
				if (selectElem.options[i].value==selectElem.value)
					select_defaults[selectElem.id].text = selectElem.options[i].innerHTML;
			}

			//SUGAR.AutoComplete.{$ac_key}.ds = 
			//get options array from vardefs
			var options = SUGAR.AutoComplete.getOptionsArray("");

			YUI().use('datasource', 'datasource-jsonschema',function (Y) {
				SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.ds = new Y.DataSource.Function({
				    source: function (request) {
				    	var ret = [];
				    	for (i=0;i<selectElem.options.length;i++)
				    		if (!(selectElem.options[i].value=='' && selectElem.options[i].innerHTML==''))
				    			ret.push({'key':selectElem.options[i].value,'text':selectElem.options[i].innerHTML});
				    	return ret;
				    }
				});
			});
		})();
		{/literal}
	
	{literal}
		YUI().use("autocomplete", "autocomplete-filters", "autocomplete-highlighters", "node","node-event-simulate", function (Y) {
	{/literal}
			
	SUGAR.AutoComplete.{$ac_key}.inputNode = Y.one('#{$fields.status.name}-input');
	SUGAR.AutoComplete.{$ac_key}.inputImage = Y.one('#{$fields.status.name}-image');
	SUGAR.AutoComplete.{$ac_key}.inputHidden = Y.one('#{$fields.status.name}');
	
			{literal}
			function SyncToHidden(selectme){
				var selectElem = document.getElementById("{/literal}{$fields.status.name}{literal}");
				var doSimulateChange = false;
				
				if (selectElem.value!=selectme)
					doSimulateChange=true;
				
				selectElem.value=selectme;

				for (i=0;i<selectElem.options.length;i++){
					selectElem.options[i].selected=false;
					if (selectElem.options[i].value==selectme)
						selectElem.options[i].selected=true;
				}

				if (doSimulateChange)
					SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('change');
			}

			//global variable 
			sync_{/literal}{$fields.status.name}{literal} = function(){
				SyncToHidden();
			}
			function syncFromHiddenToWidget(){

				var selectElem = document.getElementById("{/literal}{$fields.status.name}{literal}");

				//if select no longer on page, kill timer
				if (selectElem==null || selectElem.options == null)
					return;

				var currentvalue = SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.get('value');

				SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.simulate('keyup');

				for (i=0;i<selectElem.options.length;i++){

					if (selectElem.options[i].value==selectElem.value && document.activeElement != document.getElementById('{/literal}{$fields.status.name}-input{literal}'))
						SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.set('value',selectElem.options[i].innerHTML);
				}
			}

            YAHOO.util.Event.onAvailable("{/literal}{$fields.status.name}{literal}", syncFromHiddenToWidget);
		{/literal}

		SUGAR.AutoComplete.{$ac_key}.minQLen = 0;
		SUGAR.AutoComplete.{$ac_key}.queryDelay = 0;
		SUGAR.AutoComplete.{$ac_key}.numOptions = {$field_options|@count};
		if(SUGAR.AutoComplete.{$ac_key}.numOptions >= 300) {literal}{
			{/literal}
			SUGAR.AutoComplete.{$ac_key}.minQLen = 1;
			SUGAR.AutoComplete.{$ac_key}.queryDelay = 200;
			{literal}
		}
		{/literal}
		if(SUGAR.AutoComplete.{$ac_key}.numOptions >= 3000) {literal}{
			{/literal}
			SUGAR.AutoComplete.{$ac_key}.minQLen = 1;
			SUGAR.AutoComplete.{$ac_key}.queryDelay = 500;
			{literal}
		}
		{/literal}
		
	SUGAR.AutoComplete.{$ac_key}.optionsVisible = false;
	
	{literal}
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.plug(Y.Plugin.AutoComplete, {
		activateFirstItem: true,
		{/literal}
		minQueryLength: SUGAR.AutoComplete.{$ac_key}.minQLen,
		queryDelay: SUGAR.AutoComplete.{$ac_key}.queryDelay,
		zIndex: 99999,

				
		{literal}
		source: SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.ds,
		
		resultTextLocator: 'text',
		resultHighlighter: 'phraseMatch',
		resultFilters: 'phraseMatch',
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.expandHover = function(ex){
		var hover = YAHOO.util.Dom.getElementsByClassName('dccontent');
		if(hover[0] != null){
			if (ex) {
				var h = '1000px';
				hover[0].style.height = h;
			}
			else{
				hover[0].style.height = '';
			}
		}
	}
		
	if({/literal}SUGAR.AutoComplete.{$ac_key}.minQLen{literal} == 0){
		// expand the dropdown options upon focus
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('focus', function () {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.sendRequest('');
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible = true;
		});
	}

			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('click', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('click');
		});
		
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('dblclick', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('dblclick');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('focus', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('focus');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('mouseup', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('mouseup');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('mousedown', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('mousedown');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('blur', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('blur');
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible = false;
			var selectElem = document.getElementById("{/literal}{$fields.status.name}{literal}");
			//if typed value is a valid option, do nothing
			for (i=0;i<selectElem.options.length;i++)
				if (selectElem.options[i].innerHTML==SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.get('value'))
					return;
			
			//typed value is invalid, so set the text and the hidden to blank
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.set('value', select_defaults[selectElem.id].text);
			SyncToHidden(select_defaults[selectElem.id].key);
		});
	
	// when they click on the arrow image, toggle the visibility of the options
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputImage.ancestor().on('click', function () {
		if (SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.blur();
		} else {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.focus();
		}
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('query', function () {
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.set('value', '');
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('visibleChange', function (e) {
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.expandHover(e.newVal); // expand
	});

	// when they select an option, set the hidden input with the KEY, to be saved
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('select', function(e) {
		SyncToHidden(e.result.raw.key);
	});
 
});
</script> 
{/literal}
{/if}
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_FARMUNIT">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_FARMUNIT' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="enum" field="farmunit"  >
{counter name="panelFieldCount" print=false}

{if !isset($config.enable_autocomplete) || $config.enable_autocomplete==false}
<select name="{$fields.farmunit.name}" 
id="{$fields.farmunit.name}" 
title=''       
>
{if isset($fields.farmunit.value) && $fields.farmunit.value != ''}
{html_options options=$fields.farmunit.options selected=$fields.farmunit.value}
{else}
{html_options options=$fields.farmunit.options selected=$fields.farmunit.default}
{/if}
</select>
{else}
{assign var="field_options" value=$fields.farmunit.options }
{capture name="field_val"}{$fields.farmunit.value}{/capture}
{assign var="field_val" value=$smarty.capture.field_val}
{capture name="ac_key"}{$fields.farmunit.name}{/capture}
{assign var="ac_key" value=$smarty.capture.ac_key}
<select style='display:none' name="{$fields.farmunit.name}" 
id="{$fields.farmunit.name}" 
title=''          
>
{if isset($fields.farmunit.value) && $fields.farmunit.value != ''}
{html_options options=$fields.farmunit.options selected=$fields.farmunit.value}
{else}
{html_options options=$fields.farmunit.options selected=$fields.farmunit.default}
{/if}
</select>
<input
id="{$fields.farmunit.name}-input"
name="{$fields.farmunit.name}-input"
size="30"
value="{$field_val|lookup:$field_options}"
type="text" style="vertical-align: top;">
<span class="id-ff multiple">
<button type="button"><img src="{sugar_getimagepath file="id-ff-down.png"}" id="{$fields.farmunit.name}-image"></button><button type="button"
id="btn-clear-{$fields.farmunit.name}-input"
title="Clear"
onclick="SUGAR.clearRelateField(this.form, '{$fields.farmunit.name}-input', '{$fields.farmunit.name}');sync_{$fields.farmunit.name}()"><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
{literal}
<script>
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal} = [];
	{/literal}

			{literal}
		(function (){
			var selectElem = document.getElementById("{/literal}{$fields.farmunit.name}{literal}");
			
			if (typeof select_defaults =="undefined")
				select_defaults = [];
			
			select_defaults[selectElem.id] = {key:selectElem.value,text:''};

			//get default
			for (i=0;i<selectElem.options.length;i++){
				if (selectElem.options[i].value==selectElem.value)
					select_defaults[selectElem.id].text = selectElem.options[i].innerHTML;
			}

			//SUGAR.AutoComplete.{$ac_key}.ds = 
			//get options array from vardefs
			var options = SUGAR.AutoComplete.getOptionsArray("");

			YUI().use('datasource', 'datasource-jsonschema',function (Y) {
				SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.ds = new Y.DataSource.Function({
				    source: function (request) {
				    	var ret = [];
				    	for (i=0;i<selectElem.options.length;i++)
				    		if (!(selectElem.options[i].value=='' && selectElem.options[i].innerHTML==''))
				    			ret.push({'key':selectElem.options[i].value,'text':selectElem.options[i].innerHTML});
				    	return ret;
				    }
				});
			});
		})();
		{/literal}
	
	{literal}
		YUI().use("autocomplete", "autocomplete-filters", "autocomplete-highlighters", "node","node-event-simulate", function (Y) {
	{/literal}
			
	SUGAR.AutoComplete.{$ac_key}.inputNode = Y.one('#{$fields.farmunit.name}-input');
	SUGAR.AutoComplete.{$ac_key}.inputImage = Y.one('#{$fields.farmunit.name}-image');
	SUGAR.AutoComplete.{$ac_key}.inputHidden = Y.one('#{$fields.farmunit.name}');
	
			{literal}
			function SyncToHidden(selectme){
				var selectElem = document.getElementById("{/literal}{$fields.farmunit.name}{literal}");
				var doSimulateChange = false;
				
				if (selectElem.value!=selectme)
					doSimulateChange=true;
				
				selectElem.value=selectme;

				for (i=0;i<selectElem.options.length;i++){
					selectElem.options[i].selected=false;
					if (selectElem.options[i].value==selectme)
						selectElem.options[i].selected=true;
				}

				if (doSimulateChange)
					SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('change');
			}

			//global variable 
			sync_{/literal}{$fields.farmunit.name}{literal} = function(){
				SyncToHidden();
			}
			function syncFromHiddenToWidget(){

				var selectElem = document.getElementById("{/literal}{$fields.farmunit.name}{literal}");

				//if select no longer on page, kill timer
				if (selectElem==null || selectElem.options == null)
					return;

				var currentvalue = SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.get('value');

				SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.simulate('keyup');

				for (i=0;i<selectElem.options.length;i++){

					if (selectElem.options[i].value==selectElem.value && document.activeElement != document.getElementById('{/literal}{$fields.farmunit.name}-input{literal}'))
						SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.set('value',selectElem.options[i].innerHTML);
				}
			}

            YAHOO.util.Event.onAvailable("{/literal}{$fields.farmunit.name}{literal}", syncFromHiddenToWidget);
		{/literal}

		SUGAR.AutoComplete.{$ac_key}.minQLen = 0;
		SUGAR.AutoComplete.{$ac_key}.queryDelay = 0;
		SUGAR.AutoComplete.{$ac_key}.numOptions = {$field_options|@count};
		if(SUGAR.AutoComplete.{$ac_key}.numOptions >= 300) {literal}{
			{/literal}
			SUGAR.AutoComplete.{$ac_key}.minQLen = 1;
			SUGAR.AutoComplete.{$ac_key}.queryDelay = 200;
			{literal}
		}
		{/literal}
		if(SUGAR.AutoComplete.{$ac_key}.numOptions >= 3000) {literal}{
			{/literal}
			SUGAR.AutoComplete.{$ac_key}.minQLen = 1;
			SUGAR.AutoComplete.{$ac_key}.queryDelay = 500;
			{literal}
		}
		{/literal}
		
	SUGAR.AutoComplete.{$ac_key}.optionsVisible = false;
	
	{literal}
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.plug(Y.Plugin.AutoComplete, {
		activateFirstItem: true,
		{/literal}
		minQueryLength: SUGAR.AutoComplete.{$ac_key}.minQLen,
		queryDelay: SUGAR.AutoComplete.{$ac_key}.queryDelay,
		zIndex: 99999,

				
		{literal}
		source: SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.ds,
		
		resultTextLocator: 'text',
		resultHighlighter: 'phraseMatch',
		resultFilters: 'phraseMatch',
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.expandHover = function(ex){
		var hover = YAHOO.util.Dom.getElementsByClassName('dccontent');
		if(hover[0] != null){
			if (ex) {
				var h = '1000px';
				hover[0].style.height = h;
			}
			else{
				hover[0].style.height = '';
			}
		}
	}
		
	if({/literal}SUGAR.AutoComplete.{$ac_key}.minQLen{literal} == 0){
		// expand the dropdown options upon focus
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('focus', function () {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.sendRequest('');
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible = true;
		});
	}

			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('click', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('click');
		});
		
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('dblclick', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('dblclick');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('focus', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('focus');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('mouseup', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('mouseup');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('mousedown', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('mousedown');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('blur', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('blur');
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible = false;
			var selectElem = document.getElementById("{/literal}{$fields.farmunit.name}{literal}");
			//if typed value is a valid option, do nothing
			for (i=0;i<selectElem.options.length;i++)
				if (selectElem.options[i].innerHTML==SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.get('value'))
					return;
			
			//typed value is invalid, so set the text and the hidden to blank
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.set('value', select_defaults[selectElem.id].text);
			SyncToHidden(select_defaults[selectElem.id].key);
		});
	
	// when they click on the arrow image, toggle the visibility of the options
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputImage.ancestor().on('click', function () {
		if (SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.blur();
		} else {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.focus();
		}
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('query', function () {
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.set('value', '');
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('visibleChange', function (e) {
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.expandHover(e.newVal); // expand
	});

	// when they select an option, set the hidden input with the KEY, to be saved
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('select', function(e) {
		SyncToHidden(e.result.raw.key);
	});
 
});
</script> 
{/literal}
{/if}
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_TRUCKINFO">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_TRUCKINFO' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="truckinfo"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.truckinfo.value) <= 0}
{assign var="value" value=$fields.truckinfo.default_value }
{else}
{assign var="value" value=$fields.truckinfo.value }
{/if}  
<input type='text' name='{$fields.truckinfo.name}' 
id='{$fields.truckinfo.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_DRIVERNAME">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_DRIVERNAME' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="drivername"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.drivername.value) <= 0}
{assign var="value" value=$fields.drivername.default_value }
{else}
{assign var="value" value=$fields.drivername.value }
{/if}  
<input type='text' name='{$fields.drivername.name}' 
id='{$fields.drivername.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-12 edit-view-row-item">


<div class="col-xs-12 col-sm-2 label" data-label="LBL_ASSIGNED_TO_NAME">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="assigned_user_name" colspan='3' >
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
{literal}{"call_back_function":"set_return","form_name":"EditView","field_to_name_array":{"id":"assigned_user_id","user_name":"assigned_user_name"}}{/literal}, 
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
<div class="clear"></div>



<div class="col-xs-12 col-sm-12 edit-view-row-item">


<div class="col-xs-12 col-sm-2 label" data-label="LBL_DESCRIPTION">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_DESCRIPTION' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="text" field="description" colspan='3' >
{counter name="panelFieldCount" print=false}

{if empty($fields.description.value)}
{assign var="value" value=$fields.description.default_value }
{else}
{assign var="value" value=$fields.description.value }
{/if}
<textarea  id='{$fields.description.name}' name='{$fields.description.name}'
rows="6"
cols="80"
title='' tabindex="0" 
 >{$value}</textarea>
{literal}{/literal}
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
</div>            </div>
<div class="tab-pane-NOBOOTSTRAPTOGGLER fade" id='tab-content-1'>
<!-- tab_panel_content.tpl -->
<div class="row edit-view-row">



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS1_BOX_28">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_28' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class1_box_28_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_28_c.value) <= 0}
{assign var="value" value=$fields.class1_box_28_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_28_c.value }
{/if}  
<input type='text' name='{$fields.class1_box_28_c.name}' 
id='{$fields.class1_box_28_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS1_BOX_48">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_48' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class1_box_48_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_48_c.value) <= 0}
{assign var="value" value=$fields.class1_box_48_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_48_c.value }
{/if}  
<input type='text' name='{$fields.class1_box_48_c.name}' 
id='{$fields.class1_box_48_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS1_BOX_32">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_32' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class1_box_32_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_32_c.value) <= 0}
{assign var="value" value=$fields.class1_box_32_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_32_c.value }
{/if}  
<input type='text' name='{$fields.class1_box_32_c.name}' 
id='{$fields.class1_box_32_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS1_BOX_60">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_60' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class1_box_60_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_60_c.value) <= 0}
{assign var="value" value=$fields.class1_box_60_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_60_c.value }
{/if}  
<input type='text' name='{$fields.class1_box_60_c.name}' 
id='{$fields.class1_box_60_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS1_BOX_36">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_36' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class1_box_36_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_36_c.value) <= 0}
{assign var="value" value=$fields.class1_box_36_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_36_c.value }
{/if}  
<input type='text' name='{$fields.class1_box_36_c.name}' 
id='{$fields.class1_box_36_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS1_BOX_70">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_70' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class1_box_70_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_70_c.value) <= 0}
{assign var="value" value=$fields.class1_box_70_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_70_c.value }
{/if}  
<input type='text' name='{$fields.class1_box_70_c.name}' 
id='{$fields.class1_box_70_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS1_BOX_40">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_40' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class1_box_40_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_40_c.value) <= 0}
{assign var="value" value=$fields.class1_box_40_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_40_c.value }
{/if}  
<input type='text' name='{$fields.class1_box_40_c.name}' 
id='{$fields.class1_box_40_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS1_BOX_84">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_84' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class1_box_84_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_84_c.value) <= 0}
{assign var="value" value=$fields.class1_box_84_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_84_c.value }
{/if}  
<input type='text' name='{$fields.class1_box_84_c.name}' 
id='{$fields.class1_box_84_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS1_BOX_96">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_96' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class1_box_96_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_96_c.value) <= 0}
{assign var="value" value=$fields.class1_box_96_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_96_c.value }
{/if}  
<input type='text' name='{$fields.class1_box_96_c.name}' 
id='{$fields.class1_box_96_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS1_BOX_108">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_108' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class1_box_108_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_108_c.value) <= 0}
{assign var="value" value=$fields.class1_box_108_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_108_c.value }
{/if}  
<input type='text' name='{$fields.class1_box_108_c.name}' 
id='{$fields.class1_box_108_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS1_BOX_120">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_120' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class1_box_120_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_120_c.value) <= 0}
{assign var="value" value=$fields.class1_box_120_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_120_c.value }
{/if}  
<input type='text' name='{$fields.class1_box_120_c.name}' 
id='{$fields.class1_box_120_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS1_BOX_132">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_132' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class1_box_132_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_132_c.value) <= 0}
{assign var="value" value=$fields.class1_box_132_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_132_c.value }
{/if}  
<input type='text' name='{$fields.class1_box_132_c.name}' 
id='{$fields.class1_box_132_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS1_BOX_144">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_144' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class1_box_144_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_144_c.value) <= 0}
{assign var="value" value=$fields.class1_box_144_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_144_c.value }
{/if}  
<input type='text' name='{$fields.class1_box_144_c.name}' 
id='{$fields.class1_box_144_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS1_BOX_156">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_156' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class1_box_156_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_156_c.value) <= 0}
{assign var="value" value=$fields.class1_box_156_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_156_c.value }
{/if}  
<input type='text' name='{$fields.class1_box_156_c.name}' 
id='{$fields.class1_box_156_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS1_BOX_168">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_BOX_168' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class1_box_168_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_box_168_c.value) <= 0}
{assign var="value" value=$fields.class1_box_168_c.default_value }
{else}
{assign var="value" value=$fields.class1_box_168_c.value }
{/if}  
<input type='text' name='{$fields.class1_box_168_c.name}' 
id='{$fields.class1_box_168_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-12 edit-view-row-item">


<div class="col-xs-12 col-sm-2 label" data-label="LBL_CLASS1_TOTAL">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS1_TOTAL' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class1_total_c" colspan='3' >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class1_total_c.value) <= 0}
{assign var="value" value=$fields.class1_total_c.default_value }
{else}
{assign var="value" value=$fields.class1_total_c.value }
{/if}  
<input type='text' name='{$fields.class1_total_c.name}' 
id='{$fields.class1_total_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
</div>            </div>
<div class="tab-pane-NOBOOTSTRAPTOGGLER fade" id='tab-content-2'>
<!-- tab_panel_content.tpl -->
<div class="row edit-view-row">



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS2_BOX_28">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_28' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class2_box_28_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_28_c.value) <= 0}
{assign var="value" value=$fields.class2_box_28_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_28_c.value }
{/if}  
<input type='text' name='{$fields.class2_box_28_c.name}' 
id='{$fields.class2_box_28_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS2_BOX_48">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_48' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class2_box_48_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_48_c.value) <= 0}
{assign var="value" value=$fields.class2_box_48_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_48_c.value }
{/if}  
<input type='text' name='{$fields.class2_box_48_c.name}' 
id='{$fields.class2_box_48_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS2_BOX_32">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_32' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class2_box_32_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_32_c.value) <= 0}
{assign var="value" value=$fields.class2_box_32_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_32_c.value }
{/if}  
<input type='text' name='{$fields.class2_box_32_c.name}' 
id='{$fields.class2_box_32_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS2_BOX_60">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_60' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class2_box_60_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_60_c.value) <= 0}
{assign var="value" value=$fields.class2_box_60_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_60_c.value }
{/if}  
<input type='text' name='{$fields.class2_box_60_c.name}' 
id='{$fields.class2_box_60_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS2_BOX_36">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_36' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class2_box_36_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_36_c.value) <= 0}
{assign var="value" value=$fields.class2_box_36_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_36_c.value }
{/if}  
<input type='text' name='{$fields.class2_box_36_c.name}' 
id='{$fields.class2_box_36_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS2_BOX_70">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_70' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class2_box_70_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_70_c.value) <= 0}
{assign var="value" value=$fields.class2_box_70_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_70_c.value }
{/if}  
<input type='text' name='{$fields.class2_box_70_c.name}' 
id='{$fields.class2_box_70_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS2_BOX_40">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_40' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class2_box_40_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_40_c.value) <= 0}
{assign var="value" value=$fields.class2_box_40_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_40_c.value }
{/if}  
<input type='text' name='{$fields.class2_box_40_c.name}' 
id='{$fields.class2_box_40_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS2_BOX_84">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_84' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class2_box_84_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_84_c.value) <= 0}
{assign var="value" value=$fields.class2_box_84_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_84_c.value }
{/if}  
<input type='text' name='{$fields.class2_box_84_c.name}' 
id='{$fields.class2_box_84_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS2_BOX_96">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_96' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class2_box_96_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_96_c.value) <= 0}
{assign var="value" value=$fields.class2_box_96_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_96_c.value }
{/if}  
<input type='text' name='{$fields.class2_box_96_c.name}' 
id='{$fields.class2_box_96_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS2_BOX_108">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_108' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class2_box_108_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_108_c.value) <= 0}
{assign var="value" value=$fields.class2_box_108_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_108_c.value }
{/if}  
<input type='text' name='{$fields.class2_box_108_c.name}' 
id='{$fields.class2_box_108_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS2_BOX_120">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_120' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class2_box_120_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_120_c.value) <= 0}
{assign var="value" value=$fields.class2_box_120_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_120_c.value }
{/if}  
<input type='text' name='{$fields.class2_box_120_c.name}' 
id='{$fields.class2_box_120_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS2_BOX_132">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_132' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class2_box_132_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_132_c.value) <= 0}
{assign var="value" value=$fields.class2_box_132_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_132_c.value }
{/if}  
<input type='text' name='{$fields.class2_box_132_c.name}' 
id='{$fields.class2_box_132_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS2_BOX_144">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_144' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class2_box_144_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_144_c.value) <= 0}
{assign var="value" value=$fields.class2_box_144_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_144_c.value }
{/if}  
<input type='text' name='{$fields.class2_box_144_c.name}' 
id='{$fields.class2_box_144_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS2_BOX_156">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_156' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class2_box_156_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_156_c.value) <= 0}
{assign var="value" value=$fields.class2_box_156_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_156_c.value }
{/if}  
<input type='text' name='{$fields.class2_box_156_c.name}' 
id='{$fields.class2_box_156_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CLASS2_BOX_168">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_BOX_168' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class2_box_168_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_box_168_c.value) <= 0}
{assign var="value" value=$fields.class2_box_168_c.default_value }
{else}
{assign var="value" value=$fields.class2_box_168_c.value }
{/if}  
<input type='text' name='{$fields.class2_box_168_c.name}' 
id='{$fields.class2_box_168_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-12 edit-view-row-item">


<div class="col-xs-12 col-sm-2 label" data-label="LBL_CLASS2_TOTAL">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CLASS2_TOTAL' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="class2_total_c" colspan='3' >
{counter name="panelFieldCount" print=false}

{if strlen($fields.class2_total_c.value) <= 0}
{assign var="value" value=$fields.class2_total_c.default_value }
{else}
{assign var="value" value=$fields.class2_total_c.value }
{/if}  
<input type='text' name='{$fields.class2_total_c.name}' 
id='{$fields.class2_total_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
</div>            </div>
<div class="tab-pane-NOBOOTSTRAPTOGGLER fade" id='tab-content-3'>
<!-- tab_panel_content.tpl -->
<div class="row edit-view-row">



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_ORGANIC_BOX_28">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_28' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="organic_box_28_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_28_c.value) <= 0}
{assign var="value" value=$fields.organic_box_28_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_28_c.value }
{/if}  
<input type='text' name='{$fields.organic_box_28_c.name}' 
id='{$fields.organic_box_28_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_ORGANIC_BOX_48">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_48' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="organic_box_48_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_48_c.value) <= 0}
{assign var="value" value=$fields.organic_box_48_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_48_c.value }
{/if}  
<input type='text' name='{$fields.organic_box_48_c.name}' 
id='{$fields.organic_box_48_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_ORGANIC_BOX_32">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_32' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="organic_box_32_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_32_c.value) <= 0}
{assign var="value" value=$fields.organic_box_32_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_32_c.value }
{/if}  
<input type='text' name='{$fields.organic_box_32_c.name}' 
id='{$fields.organic_box_32_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_ORGANIC_BOX_60">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_60' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="organic_box_60_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_60_c.value) <= 0}
{assign var="value" value=$fields.organic_box_60_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_60_c.value }
{/if}  
<input type='text' name='{$fields.organic_box_60_c.name}' 
id='{$fields.organic_box_60_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_ORGANIC_BOX_36">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_36' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="organic_box_36_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_36_c.value) <= 0}
{assign var="value" value=$fields.organic_box_36_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_36_c.value }
{/if}  
<input type='text' name='{$fields.organic_box_36_c.name}' 
id='{$fields.organic_box_36_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_ORGANIC_BOX_70">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_70' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="organic_box_70_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_70_c.value) <= 0}
{assign var="value" value=$fields.organic_box_70_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_70_c.value }
{/if}  
<input type='text' name='{$fields.organic_box_70_c.name}' 
id='{$fields.organic_box_70_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_ORGANIC_BOX_40">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_40' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="organic_box_40_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_40_c.value) <= 0}
{assign var="value" value=$fields.organic_box_40_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_40_c.value }
{/if}  
<input type='text' name='{$fields.organic_box_40_c.name}' 
id='{$fields.organic_box_40_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_ORGANIC_BOX_84">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_84' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="organic_box_84_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_84_c.value) <= 0}
{assign var="value" value=$fields.organic_box_84_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_84_c.value }
{/if}  
<input type='text' name='{$fields.organic_box_84_c.name}' 
id='{$fields.organic_box_84_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_ORGANIC_BOX_96">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_96' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="organic_box_96_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_96_c.value) <= 0}
{assign var="value" value=$fields.organic_box_96_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_96_c.value }
{/if}  
<input type='text' name='{$fields.organic_box_96_c.name}' 
id='{$fields.organic_box_96_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_ORGANIC_BOX_108">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_108' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="organic_box_108_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_108_c.value) <= 0}
{assign var="value" value=$fields.organic_box_108_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_108_c.value }
{/if}  
<input type='text' name='{$fields.organic_box_108_c.name}' 
id='{$fields.organic_box_108_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_ORGANIC_BOX_120">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_120' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="organic_box_120_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_120_c.value) <= 0}
{assign var="value" value=$fields.organic_box_120_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_120_c.value }
{/if}  
<input type='text' name='{$fields.organic_box_120_c.name}' 
id='{$fields.organic_box_120_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_ORGANIC_BOX_132">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_132' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="organic_box_132_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_132_c.value) <= 0}
{assign var="value" value=$fields.organic_box_132_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_132_c.value }
{/if}  
<input type='text' name='{$fields.organic_box_132_c.name}' 
id='{$fields.organic_box_132_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_ORGANIC_BOX_144">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_144' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="organic_box_144_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_144_c.value) <= 0}
{assign var="value" value=$fields.organic_box_144_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_144_c.value }
{/if}  
<input type='text' name='{$fields.organic_box_144_c.name}' 
id='{$fields.organic_box_144_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_ORGANIC_BOX_156">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_156' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="organic_box_156_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_156_c.value) <= 0}
{assign var="value" value=$fields.organic_box_156_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_156_c.value }
{/if}  
<input type='text' name='{$fields.organic_box_156_c.name}' 
id='{$fields.organic_box_156_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_ORGANIC_BOX_168">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_BOX_168' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="organic_box_168_c"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_box_168_c.value) <= 0}
{assign var="value" value=$fields.organic_box_168_c.default_value }
{else}
{assign var="value" value=$fields.organic_box_168_c.value }
{/if}  
<input type='text' name='{$fields.organic_box_168_c.name}' 
id='{$fields.organic_box_168_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-12 edit-view-row-item">


<div class="col-xs-12 col-sm-2 label" data-label="LBL_ORGANIC_TOTAL">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_ORGANIC_TOTAL' module='fyn_QR_CODE_PALLETTE'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="organic_total_c" colspan='3' >
{counter name="panelFieldCount" print=false}

{if strlen($fields.organic_total_c.value) <= 0}
{assign var="value" value=$fields.organic_total_c.default_value }
{else}
{assign var="value" value=$fields.organic_total_c.value }
{/if}  
<input type='text' name='{$fields.organic_total_c.name}' 
id='{$fields.organic_total_c.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
</div>            </div>
</div>

<div class="panel-content">
<div>&nbsp;</div>








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
{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}" accessKey="{$APP.LBL_SAVE_BUTTON_KEY}" class="button primary" onclick="var _form = document.getElementById('EditView'); {if $isDuplicate}_form.return_id.value=''; {/if}_form.action.value='Save'; if(check_form('EditView'))SUGAR.ajaxUI.submitForm(_form);return false;" type="submit" name="button" value="{$APP.LBL_SAVE_BUTTON_LABEL}" id="SAVE">{/if} 
{if !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && !empty($smarty.request.return_id))}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=DetailView&module={$smarty.request.return_module|escape:"url"}&record={$smarty.request.return_id|escape:"url"}'); return false;" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" type="button" id="CANCEL"> {elseif !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && !empty($fields.id.value))}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=DetailView&module={$smarty.request.return_module|escape:"url"}&record={$fields.id.value}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {elseif !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && empty($fields.id.value)) && empty($smarty.request.return_id)}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=ListView&module={$smarty.request.return_module|escape:"url"}&record={$fields.id.value}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {elseif !empty($smarty.request.return_action) && !empty($smarty.request.return_module)}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action={$smarty.request.return_action}&module={$smarty.request.return_module|escape:"url"}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {elseif empty($smarty.request.return_action) || empty($smarty.request.return_id) && !empty($fields.id.value)}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=index&module=fyn_QR_CODE_PALLETTE'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {else}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=index&module={$smarty.request.return_module|escape:"url"}&record={$smarty.request.return_id|escape:"url"}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {/if}
{if $showVCRControl}
<button type="button" id="save_and_continue" class="button saveAndContinue" title="{$app_strings.LBL_SAVE_AND_CONTINUE}" onClick="SUGAR.saveAndContinue(this);">
{$APP.LBL_SAVE_AND_CONTINUE}
</button>
{/if}
{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=fyn_QR_CODE_PALLETTE", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}
</div>
</form>
{$set_focus_block}
<script>SUGAR.util.doWhen("document.getElementById('EditView') != null",
        function(){ldelim}SUGAR.util.buildAccessKeyLabels();{rdelim});
</script>
{sugar_getscript file="cache/include/javascript/sugar_grp_yui_widgets.js"}
<script type="text/javascript">
var EditView_tabs = new YAHOO.widget.TabView("EditView_tabs");
EditView_tabs.selectTab(0);
</script>
<script type="text/javascript">
YAHOO.util.Event.onContentReady("EditView",
    function () {ldelim} initEditView(document.forms.EditView) {rdelim});
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
addForm('EditView');addToValidate('EditView', 'name', 'name', true,'{/literal}{sugar_translate label='LBL_NAME' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'date_entered_date', 'date', false,'Date Created' );
addToValidate('EditView', 'date_modified_date', 'date', false,'Date Modified' );
addToValidate('EditView', 'modified_user_id', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_MODIFIED' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'modified_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_MODIFIED_NAME' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'created_by', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_CREATED' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'created_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_CREATED' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'description', 'text', false,'{/literal}{sugar_translate label='LBL_DESCRIPTION' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'deleted', 'bool', false,'{/literal}{sugar_translate label='LBL_DELETED' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'assigned_user_id', 'relate', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_TO_ID' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'assigned_user_name', 'relate', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'total_boxes', 'varchar', false,'{/literal}{sugar_translate label='LBL_TOTAL_BOXES' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'truckinfo', 'varchar', false,'{/literal}{sugar_translate label='LBL_TRUCKINFO' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'qrimage', 'image', false,'{/literal}{sugar_translate label='LBL_QRIMAGE' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'status', 'enum', false,'{/literal}{sugar_translate label='LBL_STATUS' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'drivername', 'varchar', false,'{/literal}{sugar_translate label='LBL_DRIVERNAME' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'farmunit', 'enum', false,'{/literal}{sugar_translate label='LBL_FARMUNIT' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class2_box_84_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS2_BOX_84' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class1_box_108_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS1_BOX_108' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class2_box_132_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS2_BOX_132' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class2_box_96_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS2_BOX_96' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'organic_box_28_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_ORGANIC_BOX_28' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class2_total_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS2_TOTAL' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class1_box_132_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS1_BOX_132' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class2_box_120_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS2_BOX_120' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'organic_box_40_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_ORGANIC_BOX_40' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'organic_box_84_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_ORGANIC_BOX_84' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class2_box_32_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS2_BOX_32' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'organic_box_32_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_ORGANIC_BOX_32' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class1_total_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS1_TOTAL' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class2_box_156_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS2_BOX_156' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class2_box_70_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS2_BOX_70' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class1_box_70_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS1_BOX_70' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'organic_total_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_ORGANIC_TOTAL' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'organic_box_120_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_ORGANIC_BOX_120' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class1_box_32_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS1_BOX_32' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'organic_box_132_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_ORGANIC_BOX_132' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class2_box_60_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS2_BOX_60' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class2_box_144_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS2_BOX_144' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class1_box_120_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS1_BOX_120' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class1_box_28_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS1_BOX_28' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'organic_box_60_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_ORGANIC_BOX_60' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'organic_box_144_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_ORGANIC_BOX_144' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class2_box_28_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS2_BOX_28' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class2_box_36_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS2_BOX_36' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'organic_box_48_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_ORGANIC_BOX_48' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'organic_box_96_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_ORGANIC_BOX_96' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class1_box_40_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS1_BOX_40' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class1_box_36_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS1_BOX_36' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'product_model_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_PRODUCT_MODEL' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class1_box_168_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS1_BOX_168' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class1_box_48_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS1_BOX_48' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class1_box_144_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS1_BOX_144' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class2_box_40_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS2_BOX_40' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'organic_box_156_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_ORGANIC_BOX_156' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'organic_box_108_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_ORGANIC_BOX_108' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class2_box_168_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS2_BOX_168' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class2_box_108_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS2_BOX_108' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'organic_box_70_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_ORGANIC_BOX_70' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class2_box_48_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS2_BOX_48' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class1_box_96_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS1_BOX_96' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class1_box_60_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS1_BOX_60' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'no_of_boxes_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_NO_OF_BOXES' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'organic_box_168_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_ORGANIC_BOX_168' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'organic_box_36_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_ORGANIC_BOX_36' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class1_box_156_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS1_BOX_156' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidate('EditView', 'class1_box_84_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_CLASS1_BOX_84' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}' );
addToValidateBinaryDependency('EditView', 'assigned_user_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_ASSIGNED_TO' module='fyn_QR_CODE_PALLETTE' for_js=true}{literal}', 'assigned_user_id' );
</script><script language="javascript">if(typeof sqs_objects == 'undefined'){var sqs_objects = new Array;}sqs_objects['EditView_assigned_user_name']={"form":"EditView","method":"get_user_array","field_list":["user_name","id"],"populate_list":["assigned_user_name","assigned_user_id"],"required_list":["assigned_user_id"],"conditions":[{"name":"user_name","op":"like_custom","end":"%","value":""}],"limit":"30","no_match_text":"No Match"};</script>{/literal}