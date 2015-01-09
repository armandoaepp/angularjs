<?php
class ClsVehiculoUbicacion extends ClsConexion {
	# CONSTRUCT
	public function __construct($cnx  = null)
	{
		$this->conn = $cnx;
	}
}
