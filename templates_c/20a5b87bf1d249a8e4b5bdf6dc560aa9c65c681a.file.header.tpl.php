<?php /* Smarty version Smarty-3.0.7, created on 2011-09-27 12:55:31
         compiled from "templates\header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:262484e81aba3211dc2-69854554%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '20a5b87bf1d249a8e4b5bdf6dc560aa9c65c681a' => 
    array (
      0 => 'templates\\header.tpl',
      1 => 1318160152,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '262484e81aba3211dc2-69854554',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
"http://www.w3.org/TR/html4/strict.dtd">
<html>
<?php $_template = new Smarty_Internal_Template("html_header.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>
<body <?php if ($_smarty_tpl->getVariable('nivel_usuario')->value=="10"){?>style="background-color:yellow;"<?php }?>>
<div style="text-align:center;">
<h1>Facturación</h1>
</div>
<?php if ($_smarty_tpl->getVariable('nivel_usuario')->value>0){?>Usuario: <?php echo $_smarty_tpl->getVariable('nombre_usuario')->value;?>
 (Nivel: <?php echo $_smarty_tpl->getVariable('nivel_usuario')->value;?>
)<?php }?>
<hr>