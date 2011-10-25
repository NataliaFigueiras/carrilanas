<?php
require_once(LIB_DIR .'Table.php');
class Usuario extends Table{
	function __construct() {
		$this->table = 'usuario';
		$this->fields= array(
				'nombre', 
				'password',
				'email',
				'nivel',
				'foto'
				);
		$this->level = 0;
		parent::__construct();
	}

	function getTable(){
		return '{
			"add"      : "true",
			"edit"     : "true",
			"delete"   : "true",
			"colModel" : [
				{"type":"text", "display":    "Nombre",   "name" : "nombre",   "width" : 50 },
				{"type":"password","display": "Password", "name" : "password",    "width" : 5  }, 
				{"type":"text", "display":    "Nivel",    "name" : "nivel", "width" : 50 } 
			]
		}';
	}
	function getForm(){
		return '{
			"colModel" : [
				{
					"type"       :"text"    ,
					"display"    :"Nombre"  ,             
					"value"      :"nombre"         
				},
				{
					"type"       :"password" ,
					"display"    :"Password" ,             
					"value"      :"password"         
				},
				{
					"type"       :"text"  ,
					"display"    :"Nivel" ,             
					"value"      :"nivel"         
				}
			]
		}';
	}
	function isValidForm($formvars) {
		$this->errors = null;
		if(strlen($formvars['nombre']) == 0) {
			$this->errors[] = 'El nombre de usuario está vacío';
		}
		if(strlen($formvars['password']) == 0) {
			$this->errors[] = 'La clave está vacía';
		}
		return empty($this->errors);
	}
}
?>
