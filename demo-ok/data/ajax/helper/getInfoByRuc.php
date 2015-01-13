<?php
	header('content-type: application/json; charset=utf-8');

	require_once '../../../lib/sunat/Sunat.php';

	$ruc = $_GET['ruc'];

	$sunat = new Sunat($ruc);
	$sunat->consultar();

	$data = array(
		'ruc'         => $sunat->getRuc(),
		'razonsocial' => $sunat->getRazonsocial(),
		'codigo'      => $sunat->getCodigo(),
		'mensaje'     => $sunat->getMensaje()
	);

    $jsn = json_encode($data);
    print_r($jsn);