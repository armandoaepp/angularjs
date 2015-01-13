<?php
	header('content-type: application/json; charset=utf-8');

	$idvehiculo = $_GET['idvehiculo'];

	try {
		include '../../autoload.php';

		$objVehiculo  = new ClsVehiculo();
		$beanVehiculo = new BeanVehiculo();

		// capturar la empresa a la que pertenece el usuario

		$beanVehiculo->setIdVehiculo($idvehiculo);
		$data_vehiculo = $objVehiculo->get_by_idvehiculo($beanVehiculo);

		if ( count($data_vehiculo) > 0 ) {
			$res = array('msg' => 'Registro encontrado', 'error' => false, 'data' => $data_vehiculo);
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

