<?php
	class ClsPersonaCorreo extends ClsConexion {
		# CONSTRUCT
		public function __construct($cnx  = null)
		{
			$this->conn = $cnx;
		}
		# Metodo Insertar
		public function set($bean_persona_correo)
		{
			$idtipocorreo = $bean_persona_correo->getIdTipoCorreo();
			$idpersona    = $bean_persona_correo->getIdPersona();
			$correo       = $bean_persona_correo->getCorreo();
			$estado       = !empty($bean_persona_correo->getEstado()) ? $bean_persona_correo->getEstado() : 1;

			$this->query = "CALL usp_set_personacorreo(".$idtipocorreo.",".$idpersona.",'".$correo."',".$estado.")";

			//return $this->query ;

			$this->execute_query();

			$data = $this->rows ;

			return $data;
		}
		# Metodo Buscar por correo
		public function get_by_correo($bean_persona_correo)
		{
			$correo = $bean_persona_correo->getCorreo();

			$this->query = "CALL usp_get_personacorreo_by_correo('".$correo."')";

			//return $this->query ;

			$this->execute_query();

			$data = $this->rows ;

			return $data;
		}

	}