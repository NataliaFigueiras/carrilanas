<?php
require_once(LIB_DIR .'Table.php');
class CompraVenta extends Table{
	function __construct() {
		$this->table = 'compraventa';
		$this->formTemplate = 'CompraVentaForm.tpl';
		$this->listTemplate = 'CompraVentaList.tpl';
		$this->fields= array(
				'precio', 
				'categoria',
				'descripcion',
				'foto',
				'fecha',
				'usuario_id'
				);
		$this->level = 0;
		parent::__construct();
	}

	function isValidForm($formvars) {
		$this->error = null;

		if(strlen($formvars['precio']) == 0) {
			$this->error = 'precio_empty';
			return false; 
		}

		if(strlen($formvars['categoria']) == 0) {
			$this->error = 'categoria_empty';
			return false; 
		}
		if(strlen($formvars['descripcion']) == 0) {
			$this->error = 'descripcion_empty';
			return false; 
		}
		if(strlen($formvars['foto']) == 0) {
			$this->error = 'foto_empty';
			return false; 
		}

		if(strlen($formvars['fecha']) == 0) {
			$this->error = 'fecha_empty';
			return false; 
		}
		return true;
	}
}
?>
