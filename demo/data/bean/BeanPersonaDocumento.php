<?php
	class BeanPersonaDocumento{
		# Constructor
		public function __construct(){}
		# Atributos
		private $idpersonadocumento;
		private $idtipodocumento;
		private $idpersona;
		private $numero;
		private $caducidad;
		private $imagen;
		private $estado;
		# METODOS
		public function setIdPersonaDocumento($idpersonadocumento_){ $this->idpersonadocumento=$idpersonadocumento_;}
		public function getIdPersonaDocumento(){ return $this->idpersonadocumento;}

		public function setIdTipoDocumento($idtipodocumento_){ $this->idtipodocumento=$idtipodocumento_;}
		public function getIdTipoDocumento(){ return $this->idtipodocumento;}

		public function setIdPersona($idpersona_){ $this->idpersona=$idpersona_;}
		public function getIdPersona(){ return $this->idpersona;}

		public function setNumero($numero_){ $this->numero=$numero_;}
		public function getNumero(){ return $this->numero;}

		public function setCaducidad($caducidad_){ $this->caducidad=$caducidad_;}
		public function getCaducidad(){ return $this->caducidad;}

		public function setImagen($imagen_){ $this->imagen=$imagen_;}
		public function getImagen(){ return $this->imagen;}

		public function setEstado($estado_){ $this->estado=$estado_;}
		public function getEstado(){ return $this->estado;}
	}