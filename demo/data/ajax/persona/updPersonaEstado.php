<?php
	header('content-type: application/json; charset=utf-8');

	$idpersona = $_GET['idpersona'];

	try {
		include '../../autoload.php';

		$objPersona   = new ClsPersona();
		$beanPersona = new BeanPersona();

		// capturar la empresa a la que pertenece el usuario

		$beanPersona->setIdPersona($idpersona);
		$data = $objPersona->get_persona_by_idpersona($beanPersona);

		if ( count($data) > 0 ) {
			$res = array('msg' => 'Registro encontrado', 'error' => false, 'data' => $data);
		}
		else{
		    $res = array('msg' => 'No se encontro el registro', 'error' => true, 'data' => array());
		}
	}
	catch (Exception $e) {
	    $res = array('msg' => $e->getMessage(), 'error' => true, 'data' => array());
	}
    $jsn = json_encode($res);
    print_r($jsn);

