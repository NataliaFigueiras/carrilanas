<?php
require_once(LIB_DIR .'Table.php');
class Usuario extends Table{
	function __construct() {
		$this->table = 'usuario';
		$this->formTemplate = 'usuarioForm2.tpl';
		$this->listTemplate = 'usuarioList2.tpl';
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

	function isValidForm($formvars) {
		$this->error = null;

		if(strlen($formvars['nombre']) == 0) {
			$this->error = 'nombre_empty';
			return false; 
		}

		if(strlen($formvars['password']) == 0) {
			$this->error = 'password_empty';
			return false; 
		}
		if(strlen($formvars['email']) == 0) {
			$this->error = 'email_empty';
			return false; 
		}
		if(!strpos($formvars['email'], "@")) {
			$this->error = 'email_incorrect';
			return false; 
		}

		if(strlen($formvars['nivel']) == 0) {
			$this->error = 'nivel_empty';
			return false; 
		}
		return true;
	}
}
?>
