<?php /* Smarty version Smarty-3.0.7, created on 2011-10-18 10:44:58
         compiled from "templates\usuarioForm2.tpl" */ ?>
<?php /*%%SmartyHeaderCode:278674e9d3c8a481d28-92748666%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2f5c6a8ca99ac2d2bb8bca96b9b35eae8c6e7ff8' => 
    array (
      0 => 'templates\\usuarioForm2.tpl',
      1 => 1318927490,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '278674e9d3c8a481d28-92748666',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php if (!is_callable('smarty_modifier_escape')) include 'smarty/plugins\modifier.escape.php';
?>

<?php $_template = new Smarty_Internal_Template("header.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>
<?php $_template = new Smarty_Internal_Template("menu.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>
<form action="<?php echo $_smarty_tpl->getVariable('SCRIPT_NAME')->value;?>
?action=submit" method="post">
  <table border="1">
    <?php if ($_smarty_tpl->getVariable('error')->value!=''){?>
      <tr>
      <td bgcolor="yellow" colspan="2">
      <?php if ($_smarty_tpl->getVariable('error')->value=="nombre_empty"){?>
	  	El nombre está vacío
      <?php }elseif($_smarty_tpl->getVariable('error')->value=="password_empty"){?> 
	   	La clave no puede estar vacía
	   	<?php }elseif($_smarty_tpl->getVariable('error')->value=="email_empty"){?> 
	   	El email no puede estar vacío
	   	<?php }elseif($_smarty_tpl->getVariable('error')->value=="email_incorrect"){?> 
	   	El email no tiene un formato válido
      <?php }elseif($_smarty_tpl->getVariable('error')->value=="nivel_empty"){?> 
	   	El nivel no puede estar vacío
      <?php }?>
      </td>
      </tr>
    <?php }?>
  </table>

  Nombre:
  <input 
	  type="text" 
	  name="nombre" 
	  value="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('formVars')->value['nombre']);?>
" 
  >
  <br />
  Password: 
  <input 
	  type="password" 
	  name="password" 
	  value="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('formVars')->value['password']);?>
" 
  >
  <br />
  Email: 
  <input 
	  type="text" 
	  name="email" 
	  value="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('formVars')->value['email']);?>
" 
  >
  <br />
     Foto: 
  <input 
	  type="text" 
	  name="foto" 
	  value="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('formVars')->value['foto']);?>
" 
  >
 <input type="file" name="foto" id="foto" />
  <br />
  Nivel: 
  <input 
	  type="text" 
	  name="nivel" 
	  value="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('formVars')->value['nivel']);?>
" 
  >
  <br />

  <input type="submit" value="Submit">
  <input type="hidden" name="id" value="<?php echo $_smarty_tpl->getVariable('id')->value;?>
" />
</form>
<?php $_template = new Smarty_Internal_Template("footer.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>
