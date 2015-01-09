<?php
class BeanTipoVehiculo{
	# Constructor
	public function __construct(){}
	# Atributos
	private $idtipovehiculo;
	private $nombre;
	private $estado;
	# METODOS
	public function setIdTipoVehiculo($idtipovehiculo_){ $this->idtipovehiculo=$idtipovehiculo_;}
	public function getIdTipoVehiculo(){ return $this->idtipovehiculo;}
	public function setNombre($nombre_){ $this->nombre=$nombre_;}
	public function getNombre(){ return $this->nombre;}
	public function setEstado($estado_){ $this->estado=$estado_;}
	public function getEstado(){ return $this->estado;}
}