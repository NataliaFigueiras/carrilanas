{* Smarty *}

{include file="header.tpl"}
{include file="menu.tpl"}
<form action="{$SCRIPT_NAME}?action=submit" method="post">
  <table border="1">
    {if $error ne ""}
      <tr>
      <td bgcolor="yellow" colspan="2">
      {if $error eq "nombre_empty"}
	  	El nombre está vacío
      {elseif $error eq "password_empty"} 
	   	La clave no puede estar vacía
	   	{elseif $error eq "email_empty"} 
	   	El email no puede estar vacío
	   	{elseif $error eq "email_incorrect"} 
	   	El email no tiene un formato válido
      {elseif $error eq "nivel_empty"} 
	   	El nivel no puede estar vacío
      {/if}
      </td>
      </tr>
    {/if}
  </table>

  Nombre:
  <input 
	  type="text" 
	  name="nombre" 
	  value="{$formVars.nombre|escape}" 
  >
  <br />
  Password: 
  <input 
	  type="password" 
	  name="password" 
	  value="{$formVars.password|escape}" 
  >
  <br />
  Email: 
  <input 
	  type="text" 
	  name="email" 
	  value="{$formVars.email|escape}" 
  >
  <br />
     Foto: 
  <input 
	  type="text" 
	  name="foto" 
	  value="{$formVars.foto|escape}" 
  >
 <input type="file" name="foto" id="foto" />
  <br />
  Nivel: 
  <input 
	  type="text" 
	  name="nivel" 
	  value="{$formVars.nivel|escape}" 
  >
  <br />

  <input type="submit" value="Submit">
  <input type="hidden" name="id" value="{$id}" />
</form>
{include file="footer.tpl"}
