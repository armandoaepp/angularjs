<?php
class ClsUsuario extends ClsConexion {
	# Constructor
	public function __construct($cnx  = null)
	{
		$this->conn = $cnx;
	}
	# Metodo Insertar
	public function set($bean_usuario)
	{
		$idpersona      = $bean_usuario->getIdPersona();
		$idrol          = $bean_usuario->getIdRol();
		$idtiporelacion = $bean_usuario->getIdTipoRelacion();
		$usuario        = $bean_usuario->getUsuario();
		$clave          = $bean_usuario->getClave();
		$fecha          = !empty($bean_usuario->getFecha()) ? $bean_usuario->getFecha() : date('Y-m-d');
		$estado         = !empty($bean_usuario->getEstado()) ? $bean_usuario->getEstado() : 1;

		$this->query = "CALL usp_set_usuario(".$idpersona.",".$idrol.",".$idtiporelacion.",'".$usuario."','".$clave."','".$fecha."',".$estado.")";

		//return $this->query;

		$this->execute_query();

		$data = $this->rows ;

		return $data;
	}
	# Metodo Logeo
	public function get_by_usuario_and_clave($bean_usuario)
	{
		$usuario = $bean_usuario->getUsuario();
		$clave   = $bean_usuario->getClave();

		$this->query = "CALL usp_get_usuario_by_usuario_and_clave('".$usuario."','".$clave."')";

		//return $this->query;

		$this->execute_query();

		$data = $this->rows ;

		return $data;
	}
	# Metodo buscar usuario por codigo
	public function get_by_codigo($bean_usuario)
	{
		$idusuario = $bean_usuario->getIdUsuario();

		$this->query = "CALL usp_get_usuario_by_idusuario(".$idusuario.")";

		//return $this->query;

		$this->execute_query();

		$data = $this->rows ;

		return $data;
	}
	# Metodo buscar empresa por codigo de usuario
	public function get_idempresa_by_idusuario($bean_usuario)
	{
		$idusuario = $bean_usuario->getIdUsuario();

		$this->query = "CALL usp_get_idempresa_by_idusuario(".$idusuario.")";

		//return $this->query;

		$this->execute_query();

		$data = $this->rows ;

		return $data;
	}
	/*# Método validar placa
	public function validar_by_placa($bean_vehiculo)
	{
		$placa = $bean_vehiculo->getPlaca();
		$idvehiculo = !empty($bean_vehiculo->getIdVehiculo()) ? $bean_vehiculo->getIdVehiculo() : 0;

		$this->query = "CALL usp_validar_registro_usuario('".$placa."',".$idvehiculo.")";
		$this->execute_query();
		$data = $this->rows ;
		return $data;
	}*/
	# Método que lista todos los usuarios de la empresa a la que pertenece el usuario logeado
	public function get_usuario($bean_usuario)
	{
		$idusuario = $bean_usuario->getIdUsuario();

		$this->query = "CALL usp_get_usuario(".$idusuario.")";

		$this->execute_query();

		$data = $this->rows ;

		return $data;
	}
	# Método que lista todos los conductores de la empresa a la que pertenece el usuario logeado
	public function get_conductor($bean_usuario)
	{
		$idusuario = $bean_usuario->getIdUsuario();

		$this->query = "CALL usp_get_conductor(".$idusuario.")";

		$this->execute_query();

		$data = $this->rows ;

		return $data;
	}
}