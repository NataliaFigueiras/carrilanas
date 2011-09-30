<?php
require_once(LIB_DIR .'MasterTable.php');
class noticiaconcarrera extends MasterTable{
	function __construct() {
		$this->table = 'noticiaconcarrera';
		$this->formTemplate = 'noticiaConCarreraForm.tpl';
		$this->listTemplate = 'noticiaConCarreraList.tpl';
		$this->fields= array(
				'nombre'     , 
				'fecha'       , 
				'titular'  , 
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
