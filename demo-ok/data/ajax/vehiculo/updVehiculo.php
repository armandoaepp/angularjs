<?php
	header('content-type: application/json; charset=utf-8');

	$data = json_decode(file_get_contents("php://input"));

	$idvehiculo		= mysql_real_escape_string($data->idvehiculo);
	$idtipovehiculo = mysql_real_escape_string($data->idtipovehiculo);
	$placa          = !empty($data->placa)			? mysql_real_escape_string($data->placa)		: '';
	$modelo         = !empty($data->modelo)			? mysql_real_escape_string($data->modelo)		: '';
	$observacion    = !empty($data->observacion)	? mysql_real_escape_string($data->observacion)	: '';
	$color          = !empty($data->color)			? mysql_real_escape_string($data->color) 		: '';
	$marca          = !empty($data->marca)			? mysql_real_escape_string($data->marca) 		: '';
	$consumo        = !empty($data->consumo)		? mysql_real_escape_string($data->consumo)		: '';

	try {
		include '../../autoload.php';

		$objVehiculo  = new ClsVehiculo();
		$beanVehiculo = new BeanVehiculo();

		$beanVehiculo->setIdVehiculo($idvehiculo);
		$beanVehiculo->setPlaca($placa);
		$data_validar = $objVehiculo->validar_by_placa($beanVehiculo);

		if (count($data_validar) == 0) {
			$beanVehiculo->setIdVehiculo($idvehiculo);
			$beanVehiculo->setIdTipoVehiculo($idtipovehiculo);
			$beanVehiculo->setPlaca($placa);
			$beanVehiculo->setModelo($modelo);
			$beanVehiculo->setObservacion($observacion);
			$beanVehiculo->setColor($color);
			$beanVehiculo->setMarca($marca);
			$beanVehiculo->setConsumo($consumo);

			$objVehiculo->upd($beanVehiculo);

			$res = array('msg' => 'Vehiculo modificado correctamente', 'error' => false, 'data' => array());
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

