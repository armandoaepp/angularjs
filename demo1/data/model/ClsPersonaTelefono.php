<?php
	class ClsPersonaTelefono extends ClsConexion {
		# CONSTRUCT
		public function __construct($cnx  = null)
		{
			$this->conn = $cnx;
		}
		# Metodo Insertar
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
	}