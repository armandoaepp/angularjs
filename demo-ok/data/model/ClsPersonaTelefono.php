<?php
	class ClsPersonaTelefono extends ClsConexion {
		# CONSTRUCT
		public function __construct($cnx  = null)
		{
			$this->conn = $cnx;
		}
		# Metodo insertar
		public function set($bean_persona_telefono)
		{
			$idtipotelefono    = $bean_persona_telefono->getIdTipoTelefono();
			$idpersona         = $bean_persona_telefono->getIdPersona();
			$numero            = $bean_persona_telefono->getNumero();
			$estado            = !empty($bean_persona_telefono->getEstado()) ? $bean_persona_telefono->getEstado() : 1;

			$this->query = "CALL usp_set_personatelefono(".$idtipotelefono.",".$idpersona.",'".$numero."',".$estado.")";
			$this->execute_query();
			$data = $this->rows ;
			return $data;
		}
		# Metodo modificar numero, por idpersona y idtipotelefono
		public function upd_numero_by_idpersona_and_idtipotelefono($bean_persona_telefono)
		{
			$numero            = $bean_persona_telefono->getNumero();
			$idpersona         = $bean_persona_telefono->getIdPersona();
			$idtipotelefono    = $bean_persona_telefono->getIdTipoTelefono();

			$this->query = "CALL usp_upd_personatelefono_set_numero_by_idpersona_idtipotelefono(".$idpersona.",".$idtipotelefono.",'".$numero."')";

			$this->execute_query();

			$data = $this->rows ;
			
			return $data;
		}
		# Metodo buscar, por idpersona y idtipotelefono
		public function get_by_idpersona_and_idtipotelefono($bean_persona_telefono)
		{
			$idpersona         = $bean_persona_telefono->getIdPersona();
			$idtipotelefono    = $bean_persona_telefono->getIdTipoTelefono();

			$this->query = "CALL usp_get_personatelefono_by_idpersona_and_idtipotelefono(".$idpersona.",".$idtipotelefono.")";

			$this->execute_query();

			$data = $this->rows ;
			
			return $data;
		}
		# Metodo validar, por idpersona, idtipotelefono y numero
		public function validate($bean_persona_telefono)
		{
			$idpersona      = !empty($bean_persona_telefono->getIdPersona()) ? $bean_persona_telefono->getIdPersona() : 0;
			$idtipotelefono = $bean_persona_telefono->getIdTipoTelefono();
			$numero         = $bean_persona_telefono->getNumero();

			$this->query = "CALL usp_validate_personatelefono(".$idpersona.",".$idtipotelefono.",'".$numero."')";

			$this->execute_query();

			$data = $this->rows;

			return $data;
		}

	}