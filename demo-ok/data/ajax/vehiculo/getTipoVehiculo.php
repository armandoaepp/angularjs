<?php
	header('content-type: application/json; charset=utf-8');

	try {
		// generar los objetivos

		include '../../autoload.php';
		$objTipoVehiculo = new ClsTipoVehiculo();

		// realizar la consulta

		$data = $objTipoVehiculo->get();

		// realizar las validaciones

		if ( count($data) > 0 ) {
	        $res = array('msg' => 'Se encontraron registros', 'error' => false, 'data' => $data);
		}
		else{
		    $res = array('msg' => 'No se encontraron registros', 'error' => true, 'data' => array());
		}
	}
	catch (Exception $e) {
	    $res = array('msg' => $e->getMessage(), 'error' => true, 'data' => array());
	}
    $jsn = json_encode($res);
    print_r($jsn);