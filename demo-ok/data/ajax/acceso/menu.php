<?php
	header('content-type: application/json; charset=utf-8');

	try {
		$array_padre = array();

		// generar los objetivos

		include '../../autoload.php';

		$beanAccesoSistema	= new BeanAccesoSistema();
		$objAccesoSistema	= new ClsAccesoSistema();
		$beanControl		= new BeanControl();

		// realizar la consulta

		$beanControl->setIdControlPadre(0);

		$beanAccesoSistema->setIdUsuario($_GET['id']);
		$beanAccesoSistema->setControl($beanControl);

		$data_menu_padre = $objAccesoSistema->get_menu_by_idusuario_idcontrolpadre($beanAccesoSistema) ;

		// realizar las validaciones

		if ( count($data_menu_padre) > 0 ) {
			for ($i = 0; $i < count($data_menu_padre); $i++) {
				$array_hijo = array();

				$beanControl->setIdControlPadre($data_menu_padre[$i]['idcontrol']);

				$beanAccesoSistema->setIdUsuario($_GET['id']);
				$beanAccesoSistema->setControl($beanControl);

				$data_menu_hijo = $objAccesoSistema->get_menu_by_idusuario_idcontrolpadre($beanAccesoSistema) ;

				for ($j =0; $j < count($data_menu_hijo) ; $j++) {
					$var_hijo = array(
						'idcontrol' => $data_menu_padre[$i]['idcontrol'],
						'nombre'    => $data_menu_padre[$i]['nombre'],
						'valor'     => $data_menu_padre[$i]['valor'],
						'icono'     => $data_menu_padre[$i]['icono'],
						'hijos'     => array()
					);
					array_push($array_hijo, $var_hijo);
				}


				$var_padre = array(
					'idcontrol' => $data_menu_padre[$i]['idcontrol'],
					'nombre'    => $data_menu_padre[$i]['nombre'],
					'valor'     => $data_menu_padre[$i]['valor'],
					'icono'     => $data_menu_padre[$i]['icono'],
					'hijos'     => $array_hijo
				);
				array_push($array_padre, $var_padre);
			}

	        $res = array('msg' => 'Se encontraron registros', 'error' => false, 'data' => $array_padre);
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