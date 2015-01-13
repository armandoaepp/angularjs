<?php
	header('content-type: application/json; charset=utf-8');

	try {
		// generar los objetivos

		include '../../autoload.php';

		$beanAccesoSistema	= new BeanAccesoSistema();
		$objAccesoSistema	= new ClsAccesoSistema();

		// realizar la consulta

		$beanAccesoSistema->setIdUsuario($_GET['id']);
		$data_aside = $objAccesoSistema->get_aside_by_idusuario($beanAccesoSistema) ;

		// realizar las validaciones

		if ( count($data_aside) > 0 ) {
	        $res = array('msg' => 'Se encontraron registros', 'error' => false, 'data' => $data_aside);
	        $jsn = json_encode($res);
	        print_r($jsn);
		}
		else{
		    $res = array('msg' => 'No se encontraron registros', 'error' => true, 'data' => array());
		    $jsn = json_encode($res);
		    print_r($jsn);
		}
	}
	catch (Exception $e) {
	    $res = array('msg' => $e->getMessage(), 'error' => true, 'data' => array());
	    $jsn = json_encode($res);
	    print_r($jsn);
	}