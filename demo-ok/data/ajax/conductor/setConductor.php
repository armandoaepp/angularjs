<?php
	header('content-type: application/json; charset=utf-8');

	session_start();

	$idusuario = $_SESSION['idusuario'];

	$data = json_decode($_POST['conductor']);

	$dni        = !empty($data->dni) 		? mysql_real_escape_string($data->dni)		: '';
	$brevete    = !empty($data->brevete) 	? mysql_real_escape_string($data->brevete)	: '';
	$nombre		= !empty($data->nombre) 	? mysql_real_escape_string($data->nombre)	: '';
	$apepat		= !empty($data->apepat) 	? mysql_real_escape_string($data->apepat)	: '';
	$apemat   	= !empty($data->apemat) 	? mysql_real_escape_string($data->apemat)	: '';
	$telefono 	= !empty($data->telefono) 	? mysql_real_escape_string($data->telefono) : '';

	try {
		include_once '../../autoload.php';
		include_once '../../../lib/upload/Upload.php';

		$objPersona          = new ClsPersona();
		$cnx                 = $objPersona->get_connection() ;
		$objUsuario          = new ClsUsuario($cnx);
		$objPersonaNatural   = new ClsPersonaNatural($cnx);
		$objRelacion         = new ClsRelacion($cnx);
		$objPersonaDocumento = new ClsPersonaDocumento($cnx);
		$objPersonaTelefono  = new ClsPersonaTelefono($cnx);

		$upload = new Upload();

		$persona          = new BeanPersona();
		$usuario          = new BeanUsuario();
		$personaNatural   = new BeanPersonaNatural();
		$relacion         = new BeanRelacion();
		$personaDocumento = new BeanPersonaDocumento();	
		$personaTelefono  = new BeanPersonaTelefono();

		$objPersona->beginTransaction() ;

		// verificar si el dni ya esta registrado

		$personaDocumento->setNumero($dni);
		$personaDocumento->setIdTipoDocumento(1);
		$data_dni = $objPersonaDocumento->validate($personaDocumento);

		// verificar si el brevete ya esta registrado

		$personaDocumento->setNumero($brevete);
		$personaDocumento->setIdTipoDocumento(5);
		$data_brevete = $objPersonaDocumento->validate($personaDocumento);

		// verificar si el telefono ya esta registrado

		$personaTelefono->setNumero($telefono);
		$personaTelefono->setIdTipoTelefono(2);
		$data_movil = $objPersonaTelefono->validate($personaTelefono);

		// validar resultado

		if ( count($data_dni) == 0 && count($data_movil) == 0 && count($data_brevete) == 0 ) {
			// empresa

			$usuario->setIdUsuario($idusuario);
			$data_empresa = $objUsuario->get_idempresa_by_idusuario($usuario);
			$idempresa = $data_empresa[0]["idpersona"];

			// persona

			$persona->setTipo(1);
			$persona->setNombre($nombre.' '.$apepat.' '.$apemat);
			$data_persona = $objPersona->set($persona);

			// extraer codigo de la persona registada

			$idpersona = $data_persona[0]["idpersona"];

			// persona natural

			$personaNatural->setIdPersona($idpersona);
			$personaNatural->setNombres($nombre);
			$personaNatural->setApePat($apepat);
			$personaNatural->setApeMat($apemat);
			$objPersonaNatural->set($personaNatural);

			// dni

			$upload->setFile($_FILES['imgdni']);
			$upload->setCarpeta('img/conductor/');
			$upload->setAlias('dni_'.$idpersona.'_');
			$upload->mover();

			$personaDocumento->setIdTipoDocumento(1);
			$personaDocumento->setIdPersona($idpersona);
			$personaDocumento->setNumero($dni);
			$personaDocumento->setImagen($upload->getNewName());
			$objPersonaDocumento->set($personaDocumento);

			// brevete

			$upload->setFile($_FILES['imgbrevete']);
			$upload->setCarpeta('img/conductor/');
			$upload->setAlias('brevete_'.$idpersona.'_');
			$upload->mover();

			$personaDocumento->setIdTipoDocumento(5);
			$personaDocumento->setIdPersona($idpersona);
			$personaDocumento->setNumero($brevete);
			$personaDocumento->setImagen($upload->getNewName());
			$objPersonaDocumento->set($personaDocumento);

			// telefono

			$personaTelefono->setIdTipoTelefono(2);
			$personaTelefono->setIdPersona($idpersona);
			$personaTelefono->setNumero($telefono);
			$objPersonaTelefono->set($personaTelefono);

			// relacion

			$relacion->setIdPersonaIndep($idempresa);
			$relacion->setIdTipoRelacion(4);
			$relacion->setIdPersonaDepen($idpersona);
			$relacion->setReferencia('conductor');
			$objRelacion->set($relacion);

			$res = array('msg' => 'Conductor registrado correctamente', 'error' => false, 'data' => array());
		}
		else{
			$msj = '' ;

			if ( count($data_dni) > 0 ) {
				$msj.='El DNI ya existe / ';
			}
			if ( count($data_movil) > 0 ) {
				$msj.='El TELEFONO ya existe / ';
			}
			if ( count($data_brevete) > 0 ) {
				$msj.='El BREVETE ya existe / ';	
			}

			$msj = trim($msj, " / ");

			$res = array('msg' => $msj, 'error' => true, 'data' => array());
		}

		// aceptando la transaccion

		$objPersona->commit() ;

	}
	catch (Exception $e) {
		// cancelando la transaccion

		$objPersona->rollback() ;

		// realizar las validaciones

	    $res = array('msg' => $e->getMessage(), 'error' => true, 'data' => array());
	}

    $jsn = json_encode($res);
    print_r($jsn);