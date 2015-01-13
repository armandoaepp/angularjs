<?php
	header('content-type: application/json; charset=utf-8');

	session_start();

	$idusuario = $_SESSION['idusuario'];

	try {
		include '../../autoload.php';

		$objUsuario   = new ClsUsuario();
		$beanUsuario  = new BeanUsuario();

		$beanUsuario->setIdUsuario($idusuario);
		$data_usuario = $objUsuario->get_usuario($beanUsuario);

		if (count($data_usuario) > 0) {
	        $res = array('msg' => 'Listado correcto', 'error' => false, 'data' => $data_usuario);
		}
		else{
	        $res = array('msg' => 'No se han encontrado registros', 'error' => true, 'data' => array());
		}
	}
	catch (Exception $e) {
	    $res = array('msg' => $e->getMessage(), 'error' => true, 'data' => array());
	}
	
    $jsn = json_encode($res);
    print_r($jsn);