<?php
	class ClsConfiguracion extends ClsConexion {
		# Constructor
		public function __construct($cnx  = null)
		{
			$this->conn = $cnx;
		}
		# Recuperar una configuracion
		public function get_by_codigo($bean_configuracion)
		{
			$idconfiguracion = $bean_configuracion->getIdConfiguracion();

			$this->query = "CALL usp_get_configuracion_by_idconfiguracion(".$idconfiguracion.");";

			$this->execute_query();

			$data = $this->rows ;

			return $data;
		}

	}