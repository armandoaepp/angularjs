<?php
class ClsVehiculo extends ClsConexion {
	# CONSTRUCT
	public function __construct($cnx  = null)
	{
		$this->conn = $cnx;
	}
	# Método Insertar
	public function set($bean_vehiculo)
	{
		$idtipovehiculo = $bean_vehiculo->getIdTipoVehiculo();
		$idpersona      = $bean_vehiculo->getIdPersona();
		$placa          = $bean_vehiculo->getPlaca();
		$modelo         = !empty($bean_vehiculo->getModelo()) ? $bean_vehiculo->getModelo() : '';
		$observacion    = !empty($bean_vehiculo->getObservacion()) ? $bean_vehiculo->getObservacion() : '';
		$color          = !empty($bean_vehiculo->getColor()) ? $bean_vehiculo->getColor() : '';
		$marca          = !empty($bean_vehiculo->getMarca()) ? $bean_vehiculo->getMarca() : '';
		$consumo        = !empty($bean_vehiculo->getConsumo()) ? $bean_vehiculo->getConsumo() : 0;
		$registro       = !empty($bean_vehiculo->getRegistro()) ? $bean_vehiculo->getRegistro() : date('Ymdhis');
		$estado         = !empty($bean_vehiculo->getEstado()) ? $bean_vehiculo->getEstado() : 1;

		$this->query = "CALL usp_set_vehiculo(".$idtipovehiculo.",
											  ".$idpersona.",
											  '".$placa."',
											  '".$modelo."',
											  '".$observacion."',
											  '".$color."',
											  '".$marca."',
											  '".$consumo."',
											  '".$registro."',
											  ".$estado.")";
		$this->execute_query();
		$data = $this->rows ;
		return $data;
	}
	# Método validar placa
	public function validar_by_placa($bean_vehiculo)
	{
		$placa = $bean_vehiculo->getPlaca();
		$idvehiculo = !empty($bean_vehiculo->getIdVehiculo()) ? $bean_vehiculo->getIdVehiculo() : 0;

		$this->query = "CALL usp_validar_registro_vehiculo('".$placa."',".$idvehiculo.")";
		$this->execute_query();
		$data = $this->rows ;
		return $data;
	}
	# Método listar por persona
	public function get_by_idpersona($bean_vehiculo)
	{
		$idpersona = $bean_vehiculo->getIdPersona();

		$this->query = "CALL usp_get_vehiculo(".$idpersona.")";
		$this->execute_query();
		$data = $this->rows ;
		return $data;
	}
	# Método buscar por codigo de vehiculo
	public function get_by_idvehiculo($bean_vehiculo)
	{
		$idvehiculo = $bean_vehiculo->getIdVehiculo();

		$this->query = "CALL usp_get_vehiculo_by_idvehiculo(".$idvehiculo.")";
		$this->execute_query();
		$data = $this->rows ;
		return $data;
	}
	# Método Modificar
	public function upd($bean_vehiculo)
	{
		$idvehiculo		= $bean_vehiculo->getIdVehiculo();
		$idtipovehiculo = $bean_vehiculo->getIdTipoVehiculo();
		$placa          = $bean_vehiculo->getPlaca();
		$modelo         = !empty($bean_vehiculo->getModelo()) 		? $bean_vehiculo->getModelo() 		: '';
		$observacion    = !empty($bean_vehiculo->getObservacion())	? $bean_vehiculo->getObservacion()	: '';
		$color          = !empty($bean_vehiculo->getColor())		? $bean_vehiculo->getColor()		: '';
		$marca          = !empty($bean_vehiculo->getMarca())		? $bean_vehiculo->getMarca()		: '';
		$consumo        = !empty($bean_vehiculo->getConsumo())		? $bean_vehiculo->getConsumo()		: 0;

		$this->query = "CALL usp_upd_vehiculo(".$idvehiculo.",
											  ".$idtipovehiculo.",
											  '".$placa."',
											  '".$modelo."',
											  '".$observacion."',
											  '".$color."',
											  '".$marca."',
											  '".$consumo."')";
		$this->execute_query();

		$data = $this->rows ;

		return $data;
	}

}