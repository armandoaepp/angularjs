<?php
	class BeanRelacion{
		# Constructor
		public function __construct(){}
		# Atributos
		private $idrelacion;
		private $idpersonaindep;
		private $idtiporelacion;
		private $idpersonadepen;
		private $registro;
		private $referencia;
		private $estado;
		# Metodos
		public function setIdRelacion($idrelacion_){ $this->idrelacion=$idrelacion_;}
		public function getIdRelacion(){ return $this->idrelacion;}

		public function setIdPersonaIndep($idpersonaindep_){ $this->idpersonaindep=$idpersonaindep_;}
		public function getIdPersonaIndep(){ return $this->idpersonaindep;}

		public function setIdTipoRelacion($idtiporelacion_){ $this->idtiporelacion=$idtiporelacion_;}
		public function getIdTipoRelacion(){ return $this->idtiporelacion;}

		public function setIdPersonaDepen($idpersonadepen_){ $this->idpersonadepen=$idpersonadepen_;}
		public function getIdPersonaDepen(){ return $this->idpersonadepen;}

		public function setRegistro($registro_){ $this->registro=$registro_;}
		public function getRegistro(){ return $this->registro;}

		public function setReferencia($referencia_){ $this->referencia=$referencia_;}
		public function getReferencia(){ return $this->referencia;}

		public function setEstado($estado_){ $this->estado=$estado_;}
		public function getEstado(){ return $this->estado;}
	}