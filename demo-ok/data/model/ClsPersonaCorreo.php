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
		# Metodo buscar por correo
		public function get_by_correo($bean_persona_correo)
		{
			$correo = $bean_persona_correo->getCorreo();

			$this->query = "CALL usp_get_personacorreo_by_correo('".$correo."')";

			//return $this->query ;

			$this->execute_query();

			$data = $this->rows ;

			return $data;
		}
		# Metodo modificar correo, por idpersona y idtipocorreo
		public function upd_correo_by_idpersona_by_idtipocorreo($bean_persona_correo)
		{
			$correo       = $bean_persona_correo->getCorreo();
			$idpersona    = $bean_persona_correo->getIdPersona();
			$idtipocorreo = $bean_persona_correo->getIdTipoCorreo();

			$this->query = "CALL usp_upd_personacorreo_set_correo_by_idpersona_and_idtipocorreo(".$idpersona.",".$idtipocorreo.",'".$correo."')";

			//return $this->query ;

			$this->execute_query();

			$data = $this->rows ;

			return $data;
		}
		# Metodo buscar, por idpersona y idtipocorreo
		public function get_by_idpersona_and_idtipocorreo($bean_persona_correo)
		{
			$idpersona    = $bean_persona_correo->getIdPersona();
			$idtipocorreo = $bean_persona_correo->getIdTipoCorreo();

			$this->query = "CALL usp_get_personacorreo_by_idpersona_and_idtipocorreo(".$idpersona.",".$idtipocorreo.")";

			//return $this->query ;

			$this->execute_query();

			$data = $this->rows ;

			return $data;
		}
		# Metodo validar, por idpersona, idtipocorreo y correo
		public function validate($bean_persona_correo)
		{
			$idpersona    = !empty($bean_persona_correo->getIdPersona()) ? $bean_persona_correo->getIdPersona() : 0;
			$idtipocorreo = $bean_persona_correo->getIdTipoCorreo();
			$correo       = $bean_persona_correo->getCorreo();

			$this->query = "CALL usp_validate_personacorreo(".$idpersona.",".$idtipocorreo.",'".$correo."')";

			$this->execute_query();

			$data = $this->rows;

			return $data;
		}

	}