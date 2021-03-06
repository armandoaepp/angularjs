<?php
	class ClsPersonaNatural extends ClsConexion {
		# CONSTRUCT
		public function __construct($cnx  = null)
		{
			$this->conn = $cnx;
		}
		# Método insertar
		public function set($bean_persona_natural)
		{
			$idpersona        = $bean_persona_natural->getIdPersona();
			$nombres          = $bean_persona_natural->getNombres();
			$apepat           = $bean_persona_natural->getApePat();
			$apemat           = $bean_persona_natural->getApeMat();
			$idgenero         = !empty($bean_persona_natural->getIdGenero()) ? $bean_persona_natural->getIdGenero() : 0;
			$idestadocivil    = !empty($bean_persona_natural->getIdEstadoCivil()) ? $bean_persona_natural->getIdEstadoCivil() : 0;

			$this->query = "CALL usp_set_personanatural(".$idpersona.",'".$nombres."','".$apepat."','".$apemat."',".$idgenero.",".$idestadocivil.")";

			$this->execute_query();

			$data = $this->rows ;

			return $data;
		}
		# Método modificar registro
		public function upd($bean_persona_natural)
		{
			$idpersona        = $bean_persona_natural->getIdPersona();
			$nombres          = $bean_persona_natural->getNombres();
			$apepat           = $bean_persona_natural->getApePat();
			$apemat           = $bean_persona_natural->getApeMat();
			$idgenero         = !empty($bean_persona_natural->getIdGenero()) ? $bean_persona_natural->getIdGenero() : 0;
			$idestadocivil    = !empty($bean_persona_natural->getIdEstadoCivil()) ? $bean_persona_natural->getIdEstadoCivil() : 0;

			$this->query = "CALL usp_upd_personanatural(".$idpersona.",'".$nombres."','".$apepat."','".$apemat."',".$idgenero.",".$idestadocivil.")";

			$this->execute_query();

			$data = $this->rows ;

			return $data;
		}
		# Método buscar por idpersona
		public function get_by_idpersona($bean_persona_natural)
		{
			$idpersona = $bean_persona_natural->getIdPersona();

			$this->query = "CALL usp_get_personanatural_by_idpersona(".$idpersona.")";

			$this->execute_query();

			$data = $this->rows ;

			return $data;
		}

	}