<?php
	class BeanPersonaCorreo{
		# Constructor
		public function __construct(){}
		# Atributos
		private $idpersonacorreo;
		private $idtipocorreo;
		private $idpersona;
		private $item;
		private $correo;
		private $estado;
		# Metodos
		public function setIdPersonaCorreo($idpersonacorreo_){ $this->idpersonacorreo=$idpersonacorreo_;}
		public function getIdPersonaCorreo(){ return $this->idpersonacorreo;}

		public function setIdTipoCorreo($idtipocorreo_){ $this->idtipocorreo=$idtipocorreo_;}
		public function getIdTipoCorreo(){ return $this->idtipocorreo;}

		public function setIdPersona($idpersona_){ $this->idpersona=$idpersona_;}
		public function getIdPersona(){ return $this->idpersona;}

		public function setItem($item_){ $this->item=$item_;}
		public function getItem(){ return $this->item;}

		public function setCorreo($correo_){ $this->correo=$correo_;}
		public function getCorreo(){ return $this->correo;}

		public function setEstado($estado_){ $this->estado=$estado_;}
		public function getEstado(){ return $this->estado;}
	}