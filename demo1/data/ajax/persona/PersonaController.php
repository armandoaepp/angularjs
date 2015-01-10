<?php
header('content-type: application/json; charset=utf-8');
include '../../autoload.php';

function cSet_Persona()
{

	try
	{
		$inputs = json_decode(file_get_contents("php://input"));

		$objPersona = new ClsPersona();
		$bean_persona = new BeanPersona();

		// $idpersona  = $inputs->idpersona;
		$nombre     = $inputs->nombre;
		$nacimiento = $inputs->nacimiento;
		$tipo       = $inputs->tipo;

		$bean_persona->setNombre($nombre);
		$bean_persona->setNacimiento($nacimiento) ;
		$bean_persona->setTipo($tipo) ;
		$bean_persona->setEstado(1) ;

		$data = $objPersona->set($bean_persona);

		$rpta = array('msg' => 'Registrado correctamente', 'error' => false, 'data' => $data);
	}
	catch (Exception $e)
	{
		$rpta = array('msg' => $e->getMessage(), 'error' => true, 'data' => array());
	}
	/*$jsn = json_encode($rpta);
	print_r($jsn);*/
	return $rpta ;
}

