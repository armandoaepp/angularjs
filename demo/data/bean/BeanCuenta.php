<?php
	class BeanCuenta{
		# Constructor
		public function __construct(){}
		# Atributos
		private $idcuenta;
		private $idpersona;
		private $idtiporelacion;
		private $numero;
		private $estado;
		# METODOS
		public function setIdCuenta($idcuenta_){ $this->idcuenta=$idcuenta_;}
		public function getIdCuenta(){ return $this->idcuenta;}

		public function setIdPersona($idpersona_){ $this->idpersona=$idpersona_;}
		public function getIdPersona(){ return $this->idpersona;}

		public function setIdTipoRelacion($idtiporelacion_){ $this->idtiporelacion=$idtiporelacion_;}
		public function getIdTipoRelacion(){ return $this->idtiporelacion;}

		public function setNumero($numero_){ $this->numero=$numero_;}
		public function getNumero(){ return $this->numero;}

		public function setEstado($estado_){ $this->estado=$estado_;}
		public function getEstado(){ return $this->estado;}
	}