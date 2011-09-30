<?php
require_once(LIB_DIR .'DetailTable.php');
class Noticia extends DetailTable{
	function __construct() {
		$this->table = 'noticia';
		$this->masterTable= 'carrera';
		$this->externalIndex= 'carrera_id';
		$this->formTemplate = 'noticiaForm.tpl';
		$this->listTemplate = 'noticiaList.tpl';
		$this->fields= array(
				'titular'     , 
				'texto'     
				
		);
		parent::__construct();
	}

	function isValidForm($formvars) {
		$this->error = null;

		if(strlen($formvars['titular']) == 0) {
			$this->error = 'titular_empty';
			return false; 
		}

		if(strlen($formvars['texto']) == 0) {
			$this->error = 'texto_empty';
			return false; 
		}
		
		return true;
	}
}
?>
