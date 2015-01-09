<?php
	class ClsRelacion extends ClsConexion {
		# Constructor
		public function __construct($cnx  = null)
		{
			$this->conn = $cnx;
		}
		# Metodo Insertar
		public function set($bean_relacion)
		{
			$idpersonaindep = $bean_relacion->getIdPersonaIndep();
			$idtiporelacion = $bean_relacion->getIdTipoRelacion();
			$idpersonadepen = $bean_relacion->getIdPersonaDepen();
			$registro       = !empty($bean_relacion->getRegistro())		? $bean_relacion->getRegistro() : date('Y-m-d H:i:s');
			$referencia     = !empty($bean_relacion->getReferencia())	? $bean_relacion->getReferencia() : '';
			$estado         = !empty($bean_relacion->getEstado())		? $bean_relacion->getEstado() : 1;

			$this->query = "CALL usp_set_relacion(".$idpersonaindep.",".$idtiporelacion.",".$idpersonadepen.",'".$registro."','".$referencia."',".$estado.")";
			$this->execute_query();
			$data = $this->rows ;
			return $data;
		}
	}