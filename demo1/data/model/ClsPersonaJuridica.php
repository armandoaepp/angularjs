<?php
	class ClsPersonaJuridica extends ClsConexion {
		# Constructor
		public function __construct($cnx  = null)
		{
			$this->conn = $cnx;
		}
		# Metodo Insertar
		public function set($bean_persona_juridica)
		{
			$idpersona   = $bean_persona_juridica->getIdPersona();
			$razonsocial = $bean_persona_juridica->getRazonSocial();
			$idrubro     = !empty($bean_persona_juridica->getIdRubro()) ? $bean_persona_juridica->getIdRubro() : 0 ;

			$this->query = "CALL usp_set_personajuridica(".$idpersona.",'".$razonsocial."',".$idrubro.")";

			$this->execute_query();

			$data = $this->rows ;

			return $data;
		}
	}
