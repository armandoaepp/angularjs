<?php
	header('content-type: application/json; charset=utf-8');

	$idpersona = $_GET['idpersona'];

	try {
		include '../../autoload.php';

		$objPersonaNatural   = new ClsPersonaNatural();
		$objPersonaDocumento = new ClsPersonaDocumento();
		$objPersonaTelefono  = new ClsPersonaTelefono();
		
		$personaNatural   = new BeanPersonaNatural();
		$personaDocumento = new BeanPersonaDocumento();
		$personaTelefono  = new BeanPersonaTelefono();

		// capturar la empresa a la que pertenece el usuario

		$personaNatural->setIdPersona($idpersona);
		$data_conductor = $objPersonaNatural->get_by_idpersona($personaNatural);

		$personaDocumento->setIdPersona($idpersona);
		$personaDocumento->setIdTipoDocumento(1);
		$data_dni = $objPersonaDocumento->get_by_idpersona_and_idtipodocumento($personaDocumento);

		$personaDocumento->setIdPersona($idpersona);
		$personaDocumento->setIdTipoDocumento(5);
		$data_brevete = $objPersonaDocumento->get_by_idpersona_and_idtipodocumento($personaDocumento);

		$personaTelefono->setIdPersona($idpersona);
		$personaTelefono->setIdTipoTelefono(2);
		$data_telefono = $objPersonaTelefono->get_by_idpersona_and_idtipotelefono($personaTelefono);

		if ( count($data_conductor) > 0 ) {
			$data = array(
				'idpersona'  => $idpersona, 
				'dni'        => isset($data_dni[0]['numero'])		? $data_dni[0]['numero']		: '',
				'nombre'     => isset($data_conductor[0]['nombres'])	? $data_conductor[0]['nombres']	: '',
				'apepat'     => isset($data_conductor[0]['apepat'])	? $data_conductor[0]['apepat']	: '',
				'apemat'     => isset($data_conductor[0]['apemat'])	? $data_conductor[0]['apemat']	: '',
				'brevete'    => isset($data_brevete[0]['numero'])	? $data_brevete[0]['numero']	: '',
				'telefono'   => isset($data_telefono[0]['numero'])	? $data_telefono[0]['numero']	: '',
				'imgbrevete' => 'file/img/conductor/' . $data_brevete[0]['imagen'],
				'imgdni'     => 'file/img/conductor/' . $data_dni[0]['imagen']
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

