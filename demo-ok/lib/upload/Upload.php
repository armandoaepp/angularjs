<?php
class Upload{
	private $file;

	private $directorio;
	private $carpeta;

	private $temp;
	private $alias;
	private $oldname;
	private $newname;
	private $extension;

	private $codigo;
	private $mensaje;

	function __construct($file = null){
		$this->file       = $file;
		$this->directorio = "../../../file/";
		$this->carpeta	  = "";
	}

	public function setFile($value){
		$this->file = $value;
	}

	public function setDirectorio($value){
		$this->directorio = $value;
	}

	public function setCarpeta($value){
		$this->carpeta = $value;
	}

	public function setAlias($value){
		$this->alias = $value;
	}

	public function extraer(){
		$this->codigo = $this->file['error'];

		if ($this->codigo == 0) { 
			$this->temp      = $this->file['tmp_name'];
			$this->oldname   = $this->file['name'];
			$this->extension = end(explode(".", $this->oldname));
			$this->newname	 = $this->alias . date("Ymd") . "_" . date("His") . "." . $this->extension;
		} 
	}

	public function mover(){
		$this->extraer();
		move_uploaded_file($this->temp, $this->directorio.$this->carpeta.$this->newname);
		return $this->codigo;
	}

	public function getOldName(){
		return $this->oldname;
	}

	public function getNewName(){
		return $this->newname;
	}

	public function getDirectorio(){
		return $this->directorio;
	}

	public function getCodigo(){
		return $this->codigo;
	}
}