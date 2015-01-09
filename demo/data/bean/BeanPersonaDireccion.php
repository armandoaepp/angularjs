<?php
	class BeanPersonaDireccion{
		# Constructor
		public function __construct(){}
		# Atributos
		private $idpersonadireccion;
		private $idtipodireccion;
		private $idpersona;
		private $idubigeo;
		private $direccion;
		private $referencia;
		private $estado;
		# Metodos
		public function setIdPersonaDireccion($idpersonadireccion_){ $this->idpersonadireccion=$idpersonadireccion_;}
		public function getIdPersonaDireccion(){ return $this->idpersonadireccion;}

		public function setIdTipoDireccion($idtipodireccion_){ $this->idtipodireccion=$idtipodireccion_;}
		public function getIdTipoDireccion(){ return $this->idtipodireccion;}

		public function setIdPersona($idpersona_){ $this->idpersona=$idpersona_;}
		public function getIdPersona(){ return $this->idpersona;}

		public function setIdUbigeo($idubigeo_){ $this->idubigeo=$idubigeo_;}
		public function getIdUbigeo(){ return $this->idubigeo;}

		public function setDireccion($direccion_){ $this->direccion=$direccion_;}
		public function getDireccion(){ return $this->direccion;}

		public function setReferencia($referencia_){ $this->referencia=$referencia_;}
		public function getReferencia(){ return $this->referencia;}

		public function setEstado($estado_){ $this->estado=$estado_;}
		public function getEstado(){ return $this->estado;}
	}