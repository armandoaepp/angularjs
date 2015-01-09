<?php
	class BeanPersonaTelefono{
		# Constructor
		public function __construct(){}
		# Atributos
		private $idpersonatelefono;
		private $idtipotelefono;
		private $idpersona;
		private $item;
		private $numero;
		private $estado;
		# Metodos
		public function setIdPersonaTelefono($idpersonatelefono_){ $this->idpersonatelefono=$idpersonatelefono_;}
		public function getIdPersonaTelefono(){ return $this->idpersonatelefono;}

		public function setIdTipoTelefono($idtipotelefono_){ $this->idtipotelefono=$idtipotelefono_;}
		public function getIdTipoTelefono(){ return $this->idtipotelefono;}

		public function setIdPersona($idpersona_){ $this->idpersona=$idpersona_;}
		public function getIdPersona(){ return $this->idpersona;}

		public function setItem($item_){ $this->item=$item_;}
		public function getItem(){ return $this->item;}

		public function setNumero($numero_){ $this->numero=$numero_;}
		public function getNumero(){ return $this->numero;}

		public function setEstado($estado_){ $this->estado=$estado_;}
		public function getEstado(){ return $this->estado;}
	}
