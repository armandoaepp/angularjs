<?php
header('content-type: application/json; charset=utf-8');

try {
		// generar los objetivos

	include '../../autoload.php';
	$objPersona = new ClsPersona();

		// realizar la consulta

	$data = $objPersona-> get_persona();

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


/*function getPersonas()
{
	try {
		// generar los objetivos
		$objPersona = new ClsPersona();
		$data = $objPersona-> get_persona();

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
}
*/