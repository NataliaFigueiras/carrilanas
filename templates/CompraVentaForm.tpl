{* Smarty *}

{include file="header.tpl"}
{include file="menu.tpl"}
<form action="{$SCRIPT_NAME}?action=submit" method="post">
  <table border="1">
    {if $error ne ""}
      <tr>
      <td bgcolor="yellow" colspan="2">
      {if $error eq "precio_empty"}
	  	El precio está vacío
      {elseif $error eq "categoria_empty"} 
	   	La categoria no puede estar vacía
      {elseif $error eq "descripcion_empty"} 
	   	La descricipción puede estar vacía
	   	{elseif $error eq "foto_empty"} 
	   	Pon una foto
	   	{elseif $error eq "fecha_empty"} 
	   	Pon una fecha
      {/if}
      </td>
      </tr>
    {/if}
  </table>

  Precio:
  <input 
	  type="text" 
	  name="precio" 
	  value="{$formVars.precio|escape}" 
  >
  <br />
  Categoría:        	
  <input 
	  type="text" 
	  name="categoria" 
	  value="{$formVars.categoria|escape}" 
  >
  <br />
  Descripción: 
  <textarea name="descripcion" >{$formVars.descripcion|escape}</textarea> 
  <br />
   Foto: 
  <input 
	  type="file" 
	  name="foto" 
	  value="{$formVars.foto|escape}" 
  >
  <br />
   Fecha: 
  <input 
	  type="text" 
	  name="fecha" 
	  value="{$formVars.fecha|escape}" 
  >
   Usuario: {$id_usuario} {$nombre_usuario}
  <br />
  <input type="submit" value="Submit">
  <input type="hidden" name="id_usuario" value="{$id_usuario}" />
  <input type="hidden" name="id" value="{$id}" />
</form>
{include file="footer.tpl"}
