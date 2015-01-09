<?php
class BeanPersonaNatural{
	# Constructor
	public function __construct(){}
	# Atributos
	private $idpersonanatural;
	private $idpersona;
	private $nombres;
	private $apepat;
	private $apemat;
	private $idgenero;
	private $idestadocivil;
	# Metodos
	public function setIdPersonaNatural($idpersonanatural_){ $this->idpersonanatural=$idpersonanatural_;}
	public function getIdPersonaNatural(){ return $this->idpersonanatural;}

	public function setIdPersona($idpersona_){ $this->idpersona=$idpersona_;}
	public function getIdPersona(){ return $this->idpersona;}

	public function setNombres($nombres_){ $this->nombres=$nombres_;}
	public function getNombres(){ return $this->nombres;}

	public function setApePat($apepat_){ $this->apepat=$apepat_;}
	public function getApePat(){ return $this->apepat;}

	public function setApeMat($apemat_){ $this->apemat=$apemat_;}
	public function getApeMat(){ return $this->apemat;}

	public function setIdGenero($idgenero_){ $this->idgenero=$idgenero_;}
	public function getIdGenero(){ return $this->idgenero;}

	public function setIdEstadoCivil($idestadocivil_){ $this->idestadocivil=$idestadocivil_;}
	public function getIdEstadoCivil(){ return $this->idestadocivil;}
}