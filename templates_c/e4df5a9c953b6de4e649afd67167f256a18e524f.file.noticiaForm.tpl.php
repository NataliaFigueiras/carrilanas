<?php /* Smarty version Smarty-3.0.7, created on 2011-09-30 13:36:07
         compiled from "templates\noticiaForm.tpl" */ ?>
<?php /*%%SmartyHeaderCode:118034e85a9a7dadd64-59929006%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e4df5a9c953b6de4e649afd67167f256a18e524f' => 
    array (
      0 => 'templates\\noticiaForm.tpl',
      1 => 1317382539,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '118034e85a9a7dadd64-59929006',
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
      <?php if ($_smarty_tpl->getVariable('error')->value=="titular_empty"){?>
	  	Pon algun titular 
      <?php }elseif($_smarty_tpl->getVariable('error')->value=="noticia_empty"){?> 
	  	Se necesita un texto 
      <?php }?>
      </td>
      </tr>
    <?php }?>
  </table>

  Titular: 
  <input 
	  type="text" 
	  name="titular" 
	  value="<?php echo smarty_modifier_escape($_smarty_tpl->getVariable('formVars')->value['titular']);?>
" 
  >
  <br />
  Noticia:
<textarea name="texto"><?php echo smarty_modifier_escape($_smarty_tpl->getVariable('formVars')->value['texto']);?>
</textarea>
  <br />
  <input type="submit" value="Submit">
  <input type="hidden" name="masterId" value="<?php echo $_smarty_tpl->getVariable('masterId')->value;?>
" />
  <input type="hidden" name="id" value="<?php echo $_smarty_tpl->getVariable('id')->value;?>
" />
</form>
<?php $_template = new Smarty_Internal_Template("footer.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>
