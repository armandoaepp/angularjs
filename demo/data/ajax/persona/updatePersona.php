<?php
	header('content-type: application/json; charset=utf-8');

	try
	{
		include '../../autoload.php';

		$inputs = json_decode(file_get_contents("php://input"));

		$objPersona = new ClsPersona();
		$bean_persona = new BeanPersona();

		$idpersona  = $inputs->idpersona;
		$nombre     = $inputs->nombre;
		$nacimiento = $inputs->nacimiento;
		$tipo       = $inputs->tipo;

		$bean_persona->setIdPersona($idpersona);
		$bean_persona->setNombre($nombre);
		$bean_persona->setNacimiento($nacimiento) ;
		$bean_persona->setTipo($tipo) ;

		$data = $objPersona->upd_persona($bean_persona);

		if (count($data) > 0)
		{
			$res = array('msg' => 'Registrado correctamente', 'error' => false, 'data' => $data);
		}
		else
		{
			$res = array('msg' => 'Error al intentar registra', 'error' => true, 'data' => array());
		}

	}
	catch (Exception $e)
	{
		$res = array('msg' => $e->getMessage(), 'error' => true, 'data' => array());
	}
	$jsn = json_encode($res);
	print_r($jsn);

