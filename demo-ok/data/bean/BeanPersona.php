<?php
	class BeanPersona{
		# Constructor
		public function __construct(){}
		# Atributos
		private $idpersona;
		private $nombre;
		private $nacimiento;
		private $tipo;
		private $estado;

		private $documento;
		private $correo;
		private $telefono;
		# Metodos
		public function setIdPersona($idpersona_){ $this->idpersona=$idpersona_;}
		public function getIdPersona(){ return $this->idpersona;}

		public function setNombre($nombre_){ $this->nombre=$nombre_;}
		public function getNombre(){ return $this->nombre;}

		public function setNacimiento($nacimiento_){ $this->nacimiento=$nacimiento_;}
		public function getNacimiento(){ return $this->nacimiento;}

		public function setTipo($tipo_){ $this->tipo=$tipo_;}
		public function getTipo(){ return $this->tipo;}

		public function setEstado($estado_){ $this->estado=$estado_;}
		public function getEstado(){ return $this->estado;}

		public function setDocumento($documento_){ $this->documento=$documento_;}
		public function getDocumento(){ return $this->documento;}

		public function setCorreo($correo_){ $this->correo=$correo_;}
		public function getCorreo(){ return $this->correo;}

		public function setTelefono($telefono_){ $this->telefono=$telefono_;}
		public function getTelefono(){ return $this->telefono;}
	}
