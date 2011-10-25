<?php /* Smarty version Smarty-3.0.7, created on 2011-10-21 12:16:01
         compiled from "templates\CompraVentaForm.tpl" */ ?>
<?php /*%%SmartyHeaderCode:26384ea146614b9e57-89747476%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2ed1f904bf7407b9ae32bb0686a730fe01e4f688' => 
    array (
      0 => 'templates\\CompraVentaForm.tpl',
      1 => 1319192160,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '26384ea146614b9e57-89747476',
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
      <?php if ($_smarty_tpl->getVariable('error')->value=="precio_empty"){?>
	  	El precio está vacío
      <?php }elseif($_smarty_tpl->getVariable('error')->value=="categoria_empty"){?> 
	   	La categoria no puede estar vacía
      <?php }elseif($_smarty_tpl->getVariable('error')->value=="descripcion_empty"){?> 
	   	La descricipción puede estar vacía
	   	<?php }elseif($_smarty_tpl->getVariable('error')->value=="foto_empty"){?> 
	   	Pon una foto
	   	<?php }elseif($_smarty_tpl->getVariable('error')->value=="fecha_empty"){?> 
	   	Pon una fecha
      <?php }?>
      </td>
      </tr>
    <?php }?>
  </table>

  Precio:
  <input 
	  type="text" 
	  name="precio" 
	  value="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('formVars')->value['precio']);?>
" 
  >
  <br />
  Categoría:        	
  <input 
	  type="text" 
	  name="categoria" 
	  value="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('formVars')->value['categoria']);?>
" 
  >
  <br />
  Descripción: 
  <textarea name="descripcion" ><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('formVars')->value['descripcion']);?>
</textarea> 
  <br />
   Foto: 
  <input 
	  type="file" 
	  name="foto" 
	  value="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('formVars')->value['foto']);?>
" 
  >
  <br />
   Fecha: 
  <input 
	  type="text" 
	  name="fecha" 
	  value="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('formVars')->value['fecha']);?>
" 
  >
   Usuario: <?php echo $_smarty_tpl->getVariable('id_usuario')->value;?>
 <?php echo $_smarty_tpl->getVariable('nombre_usuario')->value;?>

  <br />
  <input type="submit" value="Submit">
  <input type="hidden" name="id_usuario" value="<?php echo $_smarty_tpl->getVariable('id_usuario')->value;?>
" />
  <input type="hidden" name="id" value="<?php echo $_smarty_tpl->getVariable('id')->value;?>
" />
</form>
<?php $_template = new Smarty_Internal_Template("footer.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>
