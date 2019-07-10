<?php /* Smarty version 2.6.31, created on 2018-12-04 20:22:29
         compiled from modules/ModuleBuilder/tpls/Preview/layoutView.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'upper', 'modules/ModuleBuilder/tpls/Preview/layoutView.tpl', 63, false),array('function', 'sugar_translate', 'modules/ModuleBuilder/tpls/Preview/layoutView.tpl', 69, false),array('function', 'counter', 'modules/ModuleBuilder/tpls/Preview/layoutView.tpl', 78, false),array('function', 'sugar_getimage', 'modules/ModuleBuilder/tpls/Preview/layoutView.tpl', 97, false),array('function', 'eval', 'modules/ModuleBuilder/tpls/Preview/layoutView.tpl', 104, false),)), $this); ?>

<table id='layoutEditorButtons' cellspacing='2'>
    <tr>
    <?php echo $this->_tpl_vars['buttons']; ?>

    </tr>
</table>
<div id='layoutEditor' style="width:675px;">

<div id='toolbox' style='display:none;'>
</div>

<div id='panels' style='float:left; overflow-y:auto; overflow-x:hidden'>

<h3><?php echo $this->_tpl_vars['layouttitle']; ?>
</h3>
<?php $_from = $this->_tpl_vars['layout']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['panelid'] => $this->_tpl_vars['panel']):
?>

    <div class='le_panel' id='<?php echo $this->_tpl_vars['idCount']; ?>
'>

        <div class='panel_label' id='le_panellabel_<?php echo $this->_tpl_vars['idCount']; ?>
'>
          <span class='panel_name' id='le_panelname_<?php echo $this->_tpl_vars['idCount']; ?>
'>
          	<?php ob_start(); ?><?php echo ((is_array($_tmp=$this->_tpl_vars['panelid'])) ? $this->_run_mod_handler('upper', true, $_tmp) : smarty_modifier_upper($_tmp)); ?>
<?php $this->_smarty_vars['capture']['panel_upper'] = ob_get_contents();  $this->assign('panel_upper', ob_get_contents());ob_end_clean(); ?>
			<?php if ($this->_tpl_vars['panelid'] == 'default'): ?>
          		<?php echo $this->_tpl_vars['mod']['LBL_DEFAULT']; ?>

			<?php elseif ($this->_tpl_vars['from_mb'] && isset ( $this->_tpl_vars['current_mod_strings'][$this->_tpl_vars['panel_upper']] )): ?>
                <?php echo $this->_tpl_vars['current_mod_strings'][$this->_tpl_vars['panel_upper']]; ?>

			<?php elseif (! empty ( $this->_tpl_vars['translate'] )): ?>
			    <?php echo smarty_function_sugar_translate(array('label' => ((is_array($_tmp=$this->_tpl_vars['panelid'])) ? $this->_run_mod_handler('upper', true, $_tmp) : smarty_modifier_upper($_tmp)),'module' => $this->_tpl_vars['language']), $this);?>

			<?php else: ?>
			    <?php echo $this->_tpl_vars['panelid']; ?>

			<?php endif; ?></span>
          <span class='panel_id' id='le_panelid_<?php echo $this->_tpl_vars['idCount']; ?>
'><?php echo $this->_tpl_vars['panelid']; ?>
</span>
        </div>
        <?php if ($this->_tpl_vars['panelid'] != 'default'): ?>
 
        <?php endif; ?>
        <?php echo smarty_function_counter(array('name' => 'idCount','assign' => 'idCount','print' => false), $this);?>


        <?php $_from = $this->_tpl_vars['panel']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['rid'] => $this->_tpl_vars['row']):
?>
            <div class='le_row' id='<?php echo $this->_tpl_vars['idCount']; ?>
'>
            <?php echo smarty_function_counter(array('name' => 'idCount','assign' => 'idCount','print' => false), $this);?>


            <?php $_from = $this->_tpl_vars['row']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['cid'] => $this->_tpl_vars['col']):
?>
            <?php $this->assign('field', $this->_tpl_vars['col']['name']); ?>
                <div class='le_field' id='<?php echo $this->_tpl_vars['idCount']; ?>
'>
                    <?php if (! $this->_tpl_vars['fromModuleBuilder'] && ( $this->_tpl_vars['col']['name'] != '(filler)' )): ?>
                    <?php endif; ?>
                    <?php if (isset ( $this->_tpl_vars['col']['type'] ) && ( $this->_tpl_vars['col']['type'] == 'address' )): ?>
                        <?php echo $this->_tpl_vars['icon_address']; ?>

                    <?php endif; ?>
                    <?php if (isset ( $this->_tpl_vars['col']['type'] ) && ( $this->_tpl_vars['col']['type'] == 'phone' )): ?>
                        <?php echo $this->_tpl_vars['icon_phone']; ?>

                    <?php endif; ?>
                                        <?php if (isset ( $this->_tpl_vars['field_defs'][$this->_tpl_vars['field']]['calculated'] ) && $this->_tpl_vars['field_defs'][$this->_tpl_vars['field']]['calculated']): ?>
                        <?php echo smarty_function_sugar_getimage(array('name' => "SugarLogic/icon_calculated",'ext' => ".png",'alt' => $this->_tpl_vars['mod_strings']['LBL_CALCULATED'],'other_attributes' => 'class="right_icon" '), $this);?>

                    <?php endif; ?>
                    <?php if (isset ( $this->_tpl_vars['field_defs'][$this->_tpl_vars['field']]['dependency'] ) && $this->_tpl_vars['field_defs'][$this->_tpl_vars['field']]['dependency']): ?>
                        <?php echo smarty_function_sugar_getimage(array('name' => "SugarLogic/icon_dependent",'alt' => $this->_tpl_vars['mod_strings']['LBL_DEPENDANT'],'ext' => ".png",'other_attributes' => 'class="right_icon" '), $this);?>

                    <?php endif; ?>
                                        <span id='le_label_<?php echo $this->_tpl_vars['idCount']; ?>
'>
                    <?php echo smarty_function_eval(array('var' => $this->_tpl_vars['col']['label'],'assign' => 'label'), $this);?>

                    <?php if (! empty ( $this->_tpl_vars['translate'] ) && ! empty ( $this->_tpl_vars['col']['label'] )): ?>
                        <?php echo smarty_function_sugar_translate(array('label' => $this->_tpl_vars['label'],'module' => $this->_tpl_vars['language']), $this);?>

                    <?php else: ?>
		                <?php if (! empty ( $this->_tpl_vars['current_mod_strings'][$this->_tpl_vars['label']] )): ?>
		                    <?php echo $this->_tpl_vars['current_mod_strings'][$this->_tpl_vars['label']]; ?>

		                <?php elseif (! empty ( $this->_tpl_vars['mod'][$this->_tpl_vars['label']] )): ?>
		                    <?php echo $this->_tpl_vars['mod'][$this->_tpl_vars['label']]; ?>

		                <?php else: ?>
		                	<?php echo $this->_tpl_vars['label']; ?>

		                <?php endif; ?>
		            <?php endif; ?></span>
                    <span class='field_name'><?php echo $this->_tpl_vars['col']['name']; ?>
</span>
                    <span class='field_label'><?php echo $this->_tpl_vars['col']['label']; ?>
</span>
                    <span id='le_tabindex_<?php echo $this->_tpl_vars['idCount']; ?>
' class='field_tabindex'><?php echo $this->_tpl_vars['col']['tabindex']; ?>
</span>
                </div>
                <?php echo smarty_function_counter(array('name' => 'idCount','assign' => 'idCount','print' => false), $this);?>

            <?php endforeach; endif; unset($_from); ?>

        </div>
    <?php endforeach; endif; unset($_from); ?>

    </div>
<?php endforeach; endif; unset($_from); ?>

</div>
<input type='hidden' id='idCount' value='<?php echo $this->_tpl_vars['idCount']; ?>
'>
</div>