<?php /* Smarty version Smarty-3.0.7, created on 2011-09-30 13:33:30
         compiled from "templates\noticiaList.tpl" */ ?>
<?php /*%%SmartyHeaderCode:278134e85a90abeb8b6-39221232%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7ee189afa73df0239cdcbfbc9a0453ef44975ce9' => 
    array (
      0 => 'templates\\noticiaList.tpl',
      1 => 1317382320,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '278134e85a90abeb8b6-39221232',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_function_cycle')) include 'smarty/plugins\function.cycle.php';
if (!is_callable('smarty_modifier_escape')) include 'smarty/plugins\modifier.escape.php';
?>

<?php $_template = new Smarty_Internal_Template("header.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>
<?php $_template = new Smarty_Internal_Template("menu.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>
<td><a href="<?php echo $_smarty_tpl->getVariable('SCRIPT_NAME')->value;?>
?action=close&view=carrera"  >
	<button>&uarr;</button>
	</a>
</td>
<table border="0" >
	<th bgcolor="#d1d1d1">id</th>
	<th bgcolor="#d1d1d1">Titular  </th>
	<th bgcolor="#d1d1d1">Texto</th>
	<th bgcolor="#d1d1d1">&nbsp;</th>
	<th bgcolor="#d1d1d1">&nbsp;</th>
	<?php  $_smarty_tpl->tpl_vars["record"] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('records')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars["record"]->key => $_smarty_tpl->tpl_vars["record"]->value){
?>
    <tr bgcolor="<?php echo smarty_function_cycle(array('values'=>"#dedede,#eeeeee",'advance'=>true),$_smarty_tpl);?>
">
		<td>
			<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('record')->value['id']);?>

		</td>        
		<td>
			<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('record')->value['titular']);?>

		</td>        
		<td>
			<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('record')->value['texto']);?>

		</td>        
	    <td><a href="<?php echo $_smarty_tpl->getVariable('SCRIPT_NAME')->value;?>
?action=edit&id=<?php echo $_smarty_tpl->getVariable('record')->value['id'];?>
&masterId=<?php echo $_smarty_tpl->getVariable('masterId')->value;?>
"  >
			<button>.</button></a>
		</td>
        <td><a href="<?php echo $_smarty_tpl->getVariable('SCRIPT_NAME')->value;?>
?action=delete&id=<?php echo $_smarty_tpl->getVariable('record')->value['id'];?>
&masterId=<?php echo $_smarty_tpl->getVariable('masterId')->value;?>
">
			<button>X</button></a>
		</td>
	</tr>
    <?php }} else { ?>
      <tr>
        <td colspan="2">No hay datos</td>
      </tr>
  <?php } ?>
</table>
<table border="0">
	<tr>
		<td>
			<a href="<?php echo $_smarty_tpl->getVariable('SCRIPT_NAME')->value;?>
?action=goFirst">
				<button>&#124;&lt;</button></a>
			</a>
		</td>
		<td>
			<a href="<?php echo $_smarty_tpl->getVariable('SCRIPT_NAME')->value;?>
?action=goPrev">
				<button>&lt;</button></a>
			</a>
		</td>
		<td>
			<a href="<?php echo $_smarty_tpl->getVariable('SCRIPT_NAME')->value;?>
?action=goNext">
				<button>&gt;</button></a>
			</a>
		</td>
		<td>
			<a href="<?php echo $_smarty_tpl->getVariable('SCRIPT_NAME')->value;?>
?action=goLast">
				<button>&gt;&#124;</button></a>
			</a>
		</td>
		<td>
			<a href="<?php echo $_smarty_tpl->getVariable('SCRIPT_NAME')->value;?>
?action=add&view=noticia&masterId=<?php echo $_smarty_tpl->getVariable('masterId')->value;?>
">
				<button>+</button></a>
			</a>
		</td>
	</tr>
</table>
<?php $_template = new Smarty_Internal_Template("footer.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>
