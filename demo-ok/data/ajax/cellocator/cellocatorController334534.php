<?php

include '../../autoload.php';

function get_rpt_ExtInputF()
{
	// echo "en controller ".$_GET["accion"] ;
	try {

		$objCellocator  = new ClsCellocator();
		$beanCellocator = new BeanCellocator();

		$data = $objCellocator->get_cellocator_by_ExtInputF($beanCellocator);

	    $rpta = array('msg' => 'Listado correcto', 'error' => false, 'data' => $data);
	}
	catch (Exception $e)
	{
	    $rpta = array('msg' => $e->getMessage(), 'error' => true, 'data' => array());
	}

	return $rpta ;
}



