<?php
require_once "ClsConexion.php";
class ClsPersona extends ClsConexion {
		# Constructor
	public function __construct($cnx  = null)
	{
		$this->conn = $cnx;
	}
		# Metodo Insertar
	public function set($bean_persona)
	{
		$nombre     = $bean_persona->getNombre();
		$nacimiento = !empty($bean_persona->getNacimiento())	? $bean_persona->getNacimiento() : '0000-00-00';
		$tipo       = !empty($bean_persona->getTipo())			? $bean_persona->getTipo() : 1;
		$estado     = !empty($bean_persona->getEstado())		? $bean_persona->getEstado() : 1;

		$this->query = "CALL usp_set_persona('".$nombre."','".$nacimiento."',".$tipo.",".$estado.")";
		$this->execute_query();
		$data = $this->rows ;

		return $data;
	}

	# Metodo Insertar
	public function upd_persona($bean_persona)
	{
		$idpersona     = $bean_persona->getIdPersona();
		$nombre     = $bean_persona->getNombre();
		$nacimiento = !empty($bean_persona->getNacimiento())	? $bean_persona->getNacimiento() : '0000-00-00';
		$tipo       = !empty($bean_persona->getTipo())			? $bean_persona->getTipo() : 1;

		$this->query = "CALL usp_upd_persona('$idpersona' ,'".$nombre."','".$nacimiento."',".$tipo.")";
		$this->execute_query();
		$data = $this->rows ;

		return $data;
	}

		# Validar
	public function validar_cliente($bean_persona)
	{
		$ruc    = $bean_persona->getDocumento()->getNumero();
		$correo = $bean_persona->getCorreo()->getCorreo();
		$movil  = $bean_persona->getTelefono()->getNumero();

		$this->query = "CALL usp_validar_registro_cliente('".$ruc."','".$correo."','".$movil."')";

		$this->execute_query();

		$data = $this->rows ;

		return $data;
	}

	# Método get Seleccionar todos
	public function get_persona()
	{
		$this->query = "CALL usp_get_persona();" ;
		$this->execute_query();
		$data = $this->rows ;
		return $data;
	}

	# Método get Seleccionar todos
	public function get_persona_by_idpersona($bean_persona)
	{
		$idpersona   = $bean_persona->getIdPersona();

		$this->query = "CALL usp_get_persona_by_idpersona('$idpersona');" ;
		$this->execute_query();
		$data = $this->rows ;
		return $data;
	}


}
