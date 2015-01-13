<?php
	header('content-type: application/json; charset=utf-8');

	session_start();

	$idusuario = $_SESSION['idusuario'];

	$data = json_decode(file_get_contents("php://input"));

	$idtipovehiculo = mysql_real_escape_string($data->idtipovehiculo);
	$placa          = mysql_real_escape_string($data->placa);
	$modelo         = !empty($data->modelo)			? mysql_real_escape_string($data->modelo)		: '';
	$observacion    = !empty($data->observacion)	? mysql_real_escape_string($data->observacion)	: '';
	$color          = !empty($data->color)			? mysql_real_escape_string($data->color)		: '';
	$marca          = !empty($data->marca)			? mysql_real_escape_string($data->marca)		: '';
	$consumo        = !empty($data->consumo)		? mysql_real_escape_string($data->consumo)		: '';

	try {
		include '../../autoload.php';

		$objVehiculo  = new ClsVehiculo();
		$beanVehiculo = new BeanVehiculo();
		$objUsuario   = new ClsUsuario();
		$beanUsuario  = new BeanUsuario();

		$beanVehiculo->setPlaca($placa);
		$data_placa = $objVehiculo->validar_by_placa($beanVehiculo);

		if (count($data_placa) == 0) {
			$beanUsuario->setIdUsuario($idusuario);
			$data_usuario = $objUsuario->get_idempresa_by_idusuario($beanUsuario);

			if ( count($data_usuario) > 0 ) {
				$idpersona = $data_usuario[0]["idpersona"];

				$beanVehiculo->setIdTipoVehiculo($idtipovehiculo);
				$beanVehiculo->setIdPersona($idpersona);
				$beanVehiculo->setPlaca($placa);
				$beanVehiculo->setModelo($modelo);
				$beanVehiculo->setObservacion($observacion);
				$beanVehiculo->setColor($color);
				$beanVehiculo->setMarca($marca);
				$beanVehiculo->setConsumo($consumo);

				$data_vehiculo = $objVehiculo->set($beanVehiculo);

				if (count($data_vehiculo) > 0) {
			        $res = array('msg' => 'Vehiculo registrado correctamente', 'error' => false, 'data' => $data_vehiculo);
				}
				else{
			        $res = array('msg' => 'Error al intentar registra el vehiculo', 'error' => true, 'data' => array());
				}
			}
			else{
			    $res = array('msg' => 'No se encontraron algunos datos', 'error' => true, 'data' => array());
			}
		}
		else{
			$res = array('msg' => 'El número de placa ya ha sido registado', 'error' => true, 'data' => array());
		}
	}
	catch (Exception $e) {
	    $res = array('msg' => $e->getMessage(), 'error' => true, 'data' => array());
	}
    $jsn = json_encode($res);
    print_r($jsn);

