<?php /* Smarty version Smarty-3.0.7, created on 2011-09-30 10:51:24
         compiled from "templates\carreraForm.tpl" */ ?>
<?php /*%%SmartyHeaderCode:36274e85830c27a530-72117959%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '21660e4469daa93be3f2ff183f3313cf00a19fa7' => 
    array (
      0 => 'templates\\carreraForm.tpl',
      1 => 1317371353,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '36274e85830c27a530-72117959',
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
  <table border="0">
    <?php if ($_smarty_tpl->getVariable('error')->value!=''){?>
      <tr>
      <td bgcolor="yellow" colspan="2">
      <?php if ($_smarty_tpl->getVariable('error')->value=="nombre_empty"){?>
	  	Se necesita un nombre
      <?php }elseif($_smarty_tpl->getVariable('error')->value=="apellidos_empty"){?>
	  	Los apellidos no pueden estar vacíos 
      <?php }elseif($_smarty_tpl->getVariable('error')->value=="dni_empty"){?>
	  	El DNI no puede estar vacío 
      <?php }elseif($_smarty_tpl->getVariable('error')->value=="telefono_empty"){?>
	  	El teléfono no puede estar vacío 
      <?php }?>
      </td>
      </tr>
    <?php }?>
  </table>

  Fecha: 
  <input 
	  type="text" 
	  name="fecha" 
	  value="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('formVars')->value['fecha']);?>
" 
  >
  <br />
  Nombre: 
  <input 
	  type="text" 
	  name="nombre" 
	  value="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('formVars')->value['nombre']);?>
" 
  >
  <br />
  Circuito
  <input 
	  type="text" 
	  name="circuito" 
	  value="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('formVars')->value['circuito']);?>
" 
  >
  <br />
  Distancia
  <input 
	  type="text" 
	  name="distancia" 
	  value="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('formVars')->value['distancia']);?>
" 
  >
  <br />
  <input type="submit" value="Submit">
  <input type="hidden" name="id" value="<?php echo $_smarty_tpl->getVariable('formVars')->value['id'];?>
" />
</form>
<?php $_template = new Smarty_Internal_Template("footer.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>
