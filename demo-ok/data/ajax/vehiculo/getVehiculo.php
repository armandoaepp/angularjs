<?php
	header('content-type: application/json; charset=utf-8');

	session_start();

	$idusuario = $_SESSION['idusuario'];

	try {
		include '../../autoload.php';

		$objVehiculo  = new ClsVehiculo();
		$beanVehiculo = new BeanVehiculo();
		$objUsuario   = new ClsUsuario();
		$beanUsuario  = new BeanUsuario();

		// capturar la empresa a la que pertenece el usuario

		$beanUsuario->setIdUsuario($idusuario);
		$data_usuario = $objUsuario->get_idempresa_by_idusuario($beanUsuario);

		if ( count($data_usuario) > 0 ) {
			$idpersona = $data_usuario[0]["idpersona"];

			$beanVehiculo->setIdPersona($idpersona);

			$data_vehiculo = $objVehiculo->get_by_idpersona($beanVehiculo);

			if (count($data_vehiculo) > 0) {
		        $res = array('msg' => 'Listado correcto', 'error' => false, 'data' => $data_vehiculo);
			}
			else{
		        $res = array('msg' => 'No se han encontrado registros', 'error' => true, 'data' => array());
			}
		}
		else{
		    $res = array('msg' => 'No se encontraron algunos datos', 'error' => true, 'data' => array());
		}
	}
	catch (Exception $e) {
	    $res = array('msg' => $e->getMessage(), 'error' => true, 'data' => array());
	}
    $jsn = json_encode($res);
    print_r($jsn);

