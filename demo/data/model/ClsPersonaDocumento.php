<?php
	class ClsPersonaDocumento extends ClsConexion {
		# CONSTRUCT
		public function __construct($cnx  = null)
		{
			$this->conn = $cnx;
		}
		# Metodo Insertar
		public function set($bean_persona_documento)
		{
			$idtipodocumento    = $bean_persona_documento->getIdTipoDocumento();
			$idpersona          = $bean_persona_documento->getIdPersona();
			$numero             = $bean_persona_documento->getNumero();
			$caducidad          = !empty($bean_persona_documento->getCaducidad())	? $bean_persona_documento->getCaducidad() : '0000-00-00';
			$imagen             = !empty($bean_persona_documento->getImagen())		? $bean_persona_documento->getImagen() : 'documento-defecto.jpg';
			$estado             = !empty($bean_persona_documento->getEstado())		? $bean_persona_documento->getEstado() : 1;

			$this->query = "CALL usp_set_personadocumento(".$idtipodocumento.",".$idpersona.",'".$numero."','".$caducidad."','".$imagen."',".$estado.")";

			//return $this->query ;

			$this->execute_query();

			$data = $this->rows ;

			return $data;
		}
		# Metodo Buscar por tipo y numero
		public function get_by_idtipodocumento_and_numero($bean_persona_documento)
		{
			$idtipodocumento	= $bean_persona_documento->getIdTipoDocumento();
			$numero             = $bean_persona_documento->getNumero();

			$this->query = "CALL usp_get_personadocumento_by_idtipodocumento_and_numero(".$idtipodocumento.",'".$numero."')";

			//return $this->query ;

			$this->execute_query();

			$data = $this->rows ;

			return $data;
		}
	}