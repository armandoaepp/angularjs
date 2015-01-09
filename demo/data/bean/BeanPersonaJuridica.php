<?php
	class BeanPersonaJuridica{
		# Constructor
		public function __construct(){}
		# Atributos
		private $idpersonajuridica;
		private $idpersona;
		private $razonsocial;
		private $idrubro;
		# Metodos
		public function setIdPersonaJuridica($idpersonajuridica_){ $this->idpersonajuridica=$idpersonajuridica_;}
		public function getIdPersonaJuridica(){ return $this->idpersonajuridica;}

		public function setIdPersona($idpersona_){ $this->idpersona=$idpersona_;}
		public function getIdPersona(){ return $this->idpersona;}

		public function setRazonSocial($razonsocial_){ $this->razonsocial=$razonsocial_;}
		public function getRazonSocial(){ return $this->razonsocial;}

		public function setIdRubro($idrubro_){ $this->idrubro=$idrubro_;}
		public function getIdRubro(){ return $this->idrubro;}
	}