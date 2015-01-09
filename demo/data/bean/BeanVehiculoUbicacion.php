<?php
class BeanVehiculoUbicacion{
	# Constructor
	public function __construct(){}
	# Atributos
	private $idvehiculoubicacion;
	private $idvehiculo;
	private $coordenada;
	private $ubigeo;
	private $fecha;
	# METODOS
	public function setIdVehiculoUbicacion($idvehiculoubicacion_){ $this->idvehiculoubicacion=$idvehiculoubicacion_;}
	public function getIdVehiculoUbicacion(){ return $this->idvehiculoubicacion;}
	public function setIdVehiculo($idvehiculo_){ $this->idvehiculo=$idvehiculo_;}
	public function getIdVehiculo(){ return $this->idvehiculo;}
	public function setCoordenada($coordenada_){ $this->coordenada=$coordenada_;}
	public function getCoordenada(){ return $this->coordenada;}
	public function setUbigeo($ubigeo_){ $this->ubigeo=$ubigeo_;}
	public function getUbigeo(){ return $this->ubigeo;}
	public function setFecha($fecha_){ $this->fecha=$fecha_;}
	public function getFecha(){ return $this->fecha;}
}