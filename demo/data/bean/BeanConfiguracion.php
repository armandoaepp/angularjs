<?php
	class BeanConfiguracion{
		# Constructor
		public function __construct(){}
		# Atributos
		private $idconfiguracion;
		private $idtipoobjeto;
		private $nombre;
		private $ayuda;
		private $valor;
		private $referencia;
		private $estado;
		# Metodos
		public function setIdConfiguracion($idconfiguracion_){ $this->idconfiguracion=$idconfiguracion_;}
		public function getIdConfiguracion(){ return $this->idconfiguracion;}

		public function setIdTipoObjeto($idtipoobjeto_){ $this->idtipoobjeto=$idtipoobjeto_;}
		public function getIdTipoObjeto(){ return $this->idtipoobjeto;}

		public function setNombre($nombre_){ $this->nombre=$nombre_;}
		public function getNombre(){ return $this->nombre;}

		public function setAyuda($ayuda_){ $this->ayuda=$ayuda_;}
		public function getAyuda(){ return $this->ayuda;}

		public function setValor($valor_){ $this->valor=$valor_;}
		public function getValor(){ return $this->valor;}

		public function setReferencia($referencia_){ $this->referencia=$referencia_;}
		public function getReferencia(){ return $this->referencia;}

		public function setEstado($estado_){ $this->estado=$estado_;}
		public function getEstado(){ return $this->estado;}
	}
