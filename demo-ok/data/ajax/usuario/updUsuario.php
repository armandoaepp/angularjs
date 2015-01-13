<?php
	header('content-type: application/json; charset=utf-8');

	$data = json_decode(file_get_contents("php://input"));

	$idpersona = mysql_real_escape_string($data->idpersona);
	$dni       = mysql_real_escape_string($data->dni);
	$nombre    = mysql_real_escape_string($data->nombre);
	$apepat    = mysql_real_escape_string($data->apepat);
	$apemat    = mysql_real_escape_string($data->apemat);
	$correo    = mysql_real_escape_string($data->correo);
	$telefono  = mysql_real_escape_string($data->telefono);

	try {
		include '../../autoload.php';

		$objPersona          = new ClsPersona();
		$cnx                 = $objPersona->get_connection() ;
		$objPersonaNatural   = new ClsPersonaNatural($cnx);
		$objPersonaDocumento = new ClsPersonaDocumento($cnx);
		$objPersonaCorreo    = new ClsPersonaCorreo($cnx);
		$objPersonaTelefono  = new ClsPersonaTelefono($cnx);
		
		$persona          = new BeanPersona();
		$personaNatural   = new BeanPersonaNatural();
		$personaDocumento = new BeanPersonaDocumento();
		$personaCorreo    = new BeanPersonaCorreo();
		$personaTelefono  = new BeanPersonaTelefono();

		$objPersona->beginTransaction() ;

		$personaDocumento->setIdPersona($idpersona);
		$personaDocumento->setIdTipoDocumento(1);
		$personaDocumento->setNumero($dni);
		$data_documento = $objPersonaDocumento->validate($personaDocumento);

		$personaCorreo->setIdPersona($idpersona);
		$personaCorreo->setIdTipoCorreo(1);
		$personaCorreo->setCorreo($correo);
		$data_correo = $objPersonaCorreo->validate($personaCorreo);

		if (count($data_documento) == 0 && count($data_correo) == 0) {
			$persona->setIdPersona($idpersona);
			$persona->setNombre($nombre.' '.$apepat.' '.$apemat);
			$objPersona->upd($persona);

			$personaNatural->setIdPersona($idpersona);
			$personaNatural->setNombres($nombre);
			$personaNatural->setApePat($apepat);
			$personaNatural->setApeMat($apemat);
			$objPersonaNatural->upd($personaNatural);

			$personaDocumento->setNumero($dni);
			$personaDocumento->setIdPersona($idpersona);
			$personaDocumento->setIdTipoDocumento(1);
			$objPersonaDocumento->upd_numero_by_idpersona_and_idtipodocumento($personaDocumento);

			$personaCorreo->setCorreo($correo);
			$personaCorreo->setIdPersona($idpersona);
			$personaCorreo->setIdTipoCorreo(1);
			$objPersonaCorreo->upd_correo_by_idpersona_by_idtipocorreo($personaCorreo);

			$personaTelefono->setNumero($telefono);
			$personaTelefono->setIdPersona($idpersona);
			$personaTelefono->setIdTipoTelefono(2);
			$objPersonaTelefono->upd_numero_by_idpersona_and_idtipotelefono($personaTelefono);			

			$res = array('msg' => 'Usuario modificado correctamente', 'error' => false, 'data' => array());
		}
		else{
			$msj = '' ;

			if ( count($data_documento) > 0 ) {
				$msj.='El DNI ya existe / ';
			}
			if ( count($data_correo) > 0 ) {
				$msj.='El CORREO ya existe / ';
			}

			$msj = trim($msj, " / ");

			$res = array('msg' => $msj, 'error' => true, 'data' => array());
		}

		$objPersona->commit() ;

	}
	catch (Exception $e) {
		$objPersona->rollback() ;

	    $res = array('msg' => $e->getMessage(), 'error' => true, 'data' => array());
	}
	
    $jsn = json_encode($res);
    print_r($jsn);

