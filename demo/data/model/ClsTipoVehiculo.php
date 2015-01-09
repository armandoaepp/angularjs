<?php
class ClsTipoVehiculo extends ClsConexion {
	# CONSTRUCT
	public function __construct($cnx  = null)
	{
		$this->conn = $cnx;
	}
	# Método seleccionar todos
	public function get()
	{
		$this->query = "CALL usp_get_tipo_vehiculo()";
		$this->execute_query();
		$data = $this->rows ;
		return $data;
	}
}
