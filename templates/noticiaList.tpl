{* Smarty *}

{include file="header.tpl"}
{include file="menu.tpl"}
<td><a href="{$SCRIPT_NAME}?action=close&view=carrera"  >
	<button>&uarr;</button>
	</a>
</td>
<table border="0" >
	<th bgcolor="#d1d1d1">id</th>
	<th bgcolor="#d1d1d1">Titular  </th>
	<th bgcolor="#d1d1d1">Texto</th>
	<th bgcolor="#d1d1d1">&nbsp;</th>
	<th bgcolor="#d1d1d1">&nbsp;</th>
	{foreach from=$records item="record"}
    <tr bgcolor="{cycle values="#dedede,#eeeeee" advance=true}">
		<td>
			{$record.id|escape}
		</td>        
		<td>
			{$record.titular|escape}
		</td>        
		<td>
			{$record.texto|escape}
		</td>        
	    <td><a href="{$SCRIPT_NAME}?action=edit&id={$record.id}&masterId={$masterId}"  >
			<button>.</button></a>
		</td>
        <td><a href="{$SCRIPT_NAME}?action=delete&id={$record.id}&masterId={$masterId}">
			<button>X</button></a>
		</td>
	</tr>
    {foreachelse}
      <tr>
        <td colspan="2">No hay datos</td>
      </tr>
  {/foreach}
</table>
<table border="0">
	<tr>
		<td>
			<a href="{$SCRIPT_NAME}?action=goFirst">
				<button>&#124;&lt;</button></a>
			</a>
		</td>
		<td>
			<a href="{$SCRIPT_NAME}?action=goPrev">
				<button>&lt;</button></a>
			</a>
		</td>
		<td>
			<a href="{$SCRIPT_NAME}?action=goNext">
				<button>&gt;</button></a>
			</a>
		</td>
		<td>
			<a href="{$SCRIPT_NAME}?action=goLast">
				<button>&gt;&#124;</button></a>
			</a>
		</td>
		<td>
			<a href="{$SCRIPT_NAME}?action=add&view=noticia&masterId={$masterId}">
				<button>+</button></a>
			</a>
		</td>
	</tr>
</table>
{include file="footer.tpl"}
