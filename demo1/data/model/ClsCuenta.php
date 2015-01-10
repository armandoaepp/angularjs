<?php
	class ClsCuenta extends ClsConexion {
		# Constructor
		public function __construct($cnx  = null)
		{
			$this->conn = $cnx;
		}
		# Método Insertar
		public function set($bean_cuenta)
		{
			$idpersona      = $bean_cuenta->getIdPersona();
			$idtiporelacion = $bean_cuenta->getIdTipoRelacion();
			$numero         = $bean_cuenta->getNumero();
			$estado         = !empty($bean_cuenta->getEstado()) ? $bean_cuenta->getEstado() : 1;

			$this->query = "CALL usp_set_cuenta(".$idpersona.",".$idtiporelacion.",'".$numero."',".$estado.")";
			$this->execute_query();
			$data = $this->rows ;
			return $data;
		}
	}