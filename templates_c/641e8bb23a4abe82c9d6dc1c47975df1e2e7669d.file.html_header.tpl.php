<?php /* Smarty version Smarty-3.0.7, created on 2011-10-21 10:21:48
         compiled from "templates\html_header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:13554e897359498246-71463507%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '641e8bb23a4abe82c9d6dc1c47975df1e2e7669d' => 
    array (
      0 => 'templates\\html_header.tpl',
      1 => 1318838436,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '13554e897359498246-71463507',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" href="css/jquery.ui.all.css">
	<script type="text/javascript" src="js/jquery-1.6.2.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.8.16.custom.min.js"></script>
	<style>
		.ui-autocomplete-loading {
			background: white url('images/ui-anim_basic_16x16.gif') right center no-repeat;
		}
	</style>
	<script>
		$(function() {
			$(".lookup").each(function(){
				var comp = $(this); 
				var url = "lib/Search.php"
					+ "?database="   + comp.attr('database')
					+ "&table="      + comp.attr('table')
					+ "&fieldSearch="+ comp.attr('fieldSearch')
					+ "&fieldRet="   + comp.attr('fieldRet')
					;
				comp.autocomplete({
					source : url, 
					minLength : 0,
					focus : function(event, ui) {
						comp.val(ui.item.ret);
						return false;
					},
					select: function(event, ui){
						comp.val(ui.item.ret);
						return false;
					}
				});
			});
		});
	</script>
</head>
