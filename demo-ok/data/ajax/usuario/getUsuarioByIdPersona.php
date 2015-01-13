<?php
	header('content-type: application/json; charset=utf-8');

	$idpersona = $_GET['idpersona'];

	try {
		include '../../autoload.php';

		$objPersonaNatural   = new ClsPersonaNatural();
		$objPersonaDocumento = new ClsPersonaDocumento();
		$objPersonaCorreo    = new ClsPersonaCorreo();
		$objPersonaTelefono  = new ClsPersonaTelefono();
		
		$personaNatural   = new BeanPersonaNatural();
		$personaDocumento = new BeanPersonaDocumento();
		$personaCorreo    = new BeanPersonaCorreo();
		$personaTelefono  = new BeanPersonaTelefono();

		// capturar la empresa a la que pertenece el usuario
		$personaNatural->setIdPersona($idpersona);
		$data_natural = $objPersonaNatural->get_by_idpersona($personaNatural);

		$personaDocumento->setIdPersona($idpersona);
		$personaDocumento->setIdTipoDocumento(1);
		$data_documento = $objPersonaDocumento->get_by_idpersona_and_idtipodocumento($personaDocumento);

		$personaCorreo->setIdPersona($idpersona);
		$personaCorreo->setIdTipoCorreo(1);
		$data_correo = $objPersonaCorreo->get_by_idpersona_and_idtipocorreo($personaCorreo);

		$personaTelefono->setIdPersona($idpersona);
		$personaTelefono->setIdTipoTelefono(2);
		$data_telefono = $objPersonaTelefono->get_by_idpersona_and_idtipotelefono($personaTelefono);

		if ( count($data_natural) > 0 ) {
			$data = array(
				'idpersona' => $idpersona, 
				'dni'       => isset($data_documento[0]['numero']) ? $data_documento[0]['numero'] : '',
				'nombre'    => isset($data_natural[0]['nombres']) ? $data_natural[0]['nombres'] : '',
				'apepat'    => isset($data_natural[0]['apepat']) ? $data_natural[0]['apepat'] : '',
				'apemat'    => isset($data_natural[0]['apemat']) ? $data_natural[0]['apemat'] : '',
				'correo'    => isset($data_correo[0]['correo']) ? $data_correo[0]['correo'] : '',
				'telefono'  => isset($data_telefono[0]['numero']) ? $data_telefono[0]['numero'] : ''
			);
			$res = array('msg' => 'Registro encontrado', 'error' => false, 'data' => $data);
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

