<?php
class BeanAccesoSistema{
	# Constructor
	public function __construct(){}
	# Atributos
	private $idaccesosistema;
	private $idusuario;
	private $idcontrol;
	private $referencia;
	private $estado;

	private $control;
	# Get y Set
	public function setIdAccesoSistema($idaccesosistema_){ $this->idaccesosistema=$idaccesosistema_;}
	public function getIdAccesoSistema(){ return $this->idaccesosistema;}

	public function setIdUsuario($idusuario_){ $this->idusuario=$idusuario_;}
	public function getIdUsuario(){ return $this->idusuario;}

	public function setIdControl($idcontrol_){ $this->idcontrol=$idcontrol_;}
	public function getIdControl(){ return $this->idcontrol;}

	public function setReferencia($referencia_){ $this->referencia=$referencia_;}
	public function getReferencia(){ return $this->referencia;}

	public function setEstado($estado_){ $this->estado=$estado_;}
	public function getEstado(){ return $this->estado;}

	public function setControl($control_){ $this->control=$control_;}
	public function getControl(){ return $this->control;}
}