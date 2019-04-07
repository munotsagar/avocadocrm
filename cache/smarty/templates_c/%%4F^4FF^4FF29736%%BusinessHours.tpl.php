<?php /* Smarty version 2.6.31, created on 2019-01-30 20:51:32
         compiled from modules/Administration/BusinessHours.tpl */ ?>


<form id="ConfigureSettings" name="ConfigureSettings" enctype='multipart/form-data' method="POST"
      action="index.php?module=Administration&action=BusinessHours&do=save">

<span class='error'><?php echo $this->_tpl_vars['error']['main']; ?>
</span>

<table width="100%" cellpadding="0" cellspacing="0" border="0" class="actionsContainer">
    <tr>
        <td>
            <?php echo $this->_tpl_vars['BUTTONS']; ?>

        </td>
    </tr>
</table>


<table width="10%" border="0" cellspacing="1" cellpadding="0" class="edit view">




<tr><th align="left" scope="row" colspan="4"><h4><?php echo $this->_tpl_vars['MOD']['LBL_AOP_BUSINESS_HOURS_SETTINGS']; ?>
</h4></th>
<tr><td colspan="4"><p><?php echo $this->_tpl_vars['MOD']['LBL_AOP_BUSINESS_HOURS_DESC']; ?>
</p><p>&nbsp;</p></td></tr>
</tr>
    <?php $_from = $this->_tpl_vars['DAY_DROPDOWNS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['day'] => $this->_tpl_vars['hours']):
?>
<tr>

    <td width="10%"><?php echo $this->_tpl_vars['day']; ?>
</td>
    <td width="5%"><label for="open_<?php echo $this->_tpl_vars['day']; ?>
"><?php echo $this->_tpl_vars['MOD']['LBL_BUSINESS_HOURS_OPEN']; ?>
</label><input data-day="<?php echo $this->_tpl_vars['day']; ?>
" type="checkbox" id="open_<?php echo $this->_tpl_vars['day']; ?>
" name="open_<?php echo $this->_tpl_vars['day']; ?>
" class="open_check" <?php if ($this->_tpl_vars['hours']['open']): ?>checked="checked"<?php endif; ?>></td>
    <td>
     <div id="<?php echo $this->_tpl_vars['day']; ?>
_times"><?php echo $this->_tpl_vars['MOD']['LBL_BUSINESS_HOURS_FROM']; ?>
 <select name="opening_time_<?php echo $this->_tpl_vars['day']; ?>
" tabindex="0" id="opening_time_<?php echo $this->_tpl_vars['day']; ?>
"><?php echo $this->_tpl_vars['hours']['opening']; ?>
</select> <?php echo $this->_tpl_vars['MOD']['LBL_BUSINESS_HOURS_TO']; ?>
 <select name="closing_time_<?php echo $this->_tpl_vars['day']; ?>
" tabindex="0" id="closing_time_<?php echo $this->_tpl_vars['day']; ?>
"><?php echo $this->_tpl_vars['hours']['closing']; ?>
</select></div>
    </td>
</tr>
    <?php endforeach; endif; unset($_from); ?>
</table>
<div style="padding-top: 2px;">
    <?php echo $this->_tpl_vars['BUTTONS']; ?>

</div>
<?php echo $this->_tpl_vars['JAVASCRIPT']; ?>

</form>