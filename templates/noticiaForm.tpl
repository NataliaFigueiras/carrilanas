{* Smarty *}

{include file="header.tpl"}
{include file="menu.tpl"}
<form action="{$SCRIPT_NAME}?action=submit" method="post">
  <table border="1">
    {if $error ne ""}
      <tr>
      <td bgcolor="yellow" colspan="2">
      {if $error eq "titular_empty"}
	  	Pon algun titular 
      {elseif $error eq "noticia_empty"} 
	  	Se necesita un texto 
      {/if}
      </td>
      </tr>
    {/if}
  </table>

  Titular: 
  <input 
	  type="text" 
	  name="titular" 
	  value="{$formVars.titular|escape}" 
  >
  <br />
  Noticia:
  <input 
	  type="text" 
	  name="noticia" 
	  value="{$formVars.noticia|escape}" 
  >
 
  <br />
  <input type="submit" value="Submit">
  <input type="hidden" name="masterId" value="{$masterId}" />
  <input type="hidden" name="id" value="{$id}" />
</form>
{include file="footer.tpl"}
