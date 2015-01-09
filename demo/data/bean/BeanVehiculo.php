<?php
class BeanVehiculo{
	# Constructor
	public function __construct(){}
	# Atributos
	private $idvehiculo;
	private $idtipovehiculo;
	private $idpersona;
	private $placa;
	private $modelo;
	private $observacion;
	private $color;
	private $marca;
	private $consumo;
	private $registro;
	private $estado;
	# METODOS
	public function setIdVehiculo($idvehiculo_){ $this->idvehiculo=$idvehiculo_;}
	public function getIdVehiculo(){ return $this->idvehiculo;}
	public function setIdTipoVehiculo($idtipovehiculo_){ $this->idtipovehiculo=$idtipovehiculo_;}
	public function getIdTipoVehiculo(){ return $this->idtipovehiculo;}
	public function setIdPersona($idpersona_){ $this->idpersona=$idpersona_;}
	public function getIdPersona(){ return $this->idpersona;}
	public function setPlaca($placa_){ $this->placa=$placa_;}
	public function getPlaca(){ return $this->placa;}
	public function setModelo($modelo_){ $this->modelo=$modelo_;}
	public function getModelo(){ return $this->modelo;}
	public function setObservacion($observacion_){ $this->observacion=$observacion_;}
	public function getObservacion(){ return $this->observacion;}
	public function setColor($color_){ $this->color=$color_;}
	public function getColor(){ return $this->color;}
	public function setMarca($marca_){ $this->marca=$marca_;}
	public function getMarca(){ return $this->marca;}
	public function setConsumo($consumo_){ $this->consumo=$consumo_;}
	public function getConsumo(){ return $this->consumo;}
	public function setRegistro($registro_){ $this->registro=$registro_;}
	public function getRegistro(){ return $this->registro;}
	public function setEstado($estado_){ $this->estado=$estado_;}
	public function getEstado(){ return $this->estado;}
}