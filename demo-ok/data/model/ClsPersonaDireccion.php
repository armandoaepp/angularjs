<?php
	class ClsPersonaDireccion extends ClsConexion {
		# Constructor
		public function __construct($cnx  = null)
		{
			$this->conn = $cnx;
		}
		# Metodo Insertar
		public function set($bean_persona_direccion)
		{
			$idtipodireccion = $bean_persona_direccion->getIdTipoDireccion();
			$idpersona       = $bean_persona_direccion->getIdPersona();
			$direccion       = $bean_persona_direccion->getDireccion();
			$idubigeo        = !empty($bean_persona_direccion->getIdUbigeo())	? $bean_persona_direccion->getIdUbigeo() : 0 ;
			$referencia      = !empty($bean_persona_direccion->getReferencia())	? $bean_persona_direccion->getReferencia() : '' ;
			$estado          = !empty($bean_persona_direccion->getEstado())		? $bean_persona_direccion->getEstado() : 1 ;

			$this->query = "CALL usp_set_personadireccion(".$idtipodireccion.",".$idpersona.",".$idubigeo.",'".$direccion."','".$referencia."',".$estado.")";

			$this->execute_query();

			$data = $this->rows ;

			return $data;
		}
	}