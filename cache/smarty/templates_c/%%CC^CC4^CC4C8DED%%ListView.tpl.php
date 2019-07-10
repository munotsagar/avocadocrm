<?php /* Smarty version 2.6.31, created on 2019-07-10 05:22:59
         compiled from include/SugarFields/Fields/Image/ListView.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'lower', 'include/SugarFields/Fields/Image/ListView.tpl', 41, false),array('function', 'sugar_fetch', 'include/SugarFields/Fields/Image/ListView.tpl', 41, false),)), $this); ?>
<img id="<?php echo ((is_array($_tmp=$this->_tpl_vars['col'])) ? $this->_run_mod_handler('lower', true, $_tmp) : smarty_modifier_lower($_tmp)); ?>
" src="index.php?entryPoint=download&id=<?php echo smarty_function_sugar_fetch(array('object' => $this->_tpl_vars['parentFieldArray'],'key' => 'ID'), $this);?>
_<?php echo ((is_array($_tmp=$this->_tpl_vars['col'])) ? $this->_run_mod_handler('lower', true, $_tmp) : smarty_modifier_lower($_tmp)); ?>
&type=<?php echo $this->_tpl_vars['module']; ?>
" style="max-width: 200px;" height="50">
