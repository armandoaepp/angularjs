<?php
	header('content-type: application/json; charset=utf-8');

	session_start();

	$idusuario = $_SESSION['idusuario'];

	$data = json_decode(file_get_contents("php://input"));

	$dni        = !empty($data->dni) 		? mysql_real_escape_string($data->dni)		: '';
	$nombre		= !empty($data->nombre) 	? mysql_real_escape_string($data->nombre)	: '';
	$apepat		= !empty($data->apepat) 	? mysql_real_escape_string($data->apepat)	: '';
	$apemat   	= !empty($data->apemat) 	? mysql_real_escape_string($data->apemat)	: '';
	$correo   	= !empty($data->correo) 	? mysql_real_escape_string($data->correo)	: '';
	$telefono 	= !empty($data->telefono) 	? mysql_real_escape_string($data->telefono) : '';

	try {
		include '../../autoload.php';

		$objPersona          = new ClsPersona();
		$cnx                 = $objPersona->get_connection() ;
		$objPersonaNatural   = new ClsPersonaNatural($cnx);
		$objUsuario          = new ClsUsuario($cnx);
		$objRelacion         = new ClsRelacion($cnx);
		$objPersonaDocumento = new ClsPersonaDocumento($cnx);
		$objPersonaCorreo    = new ClsPersonaCorreo($cnx);
		$objPersonaTelefono  = new ClsPersonaTelefono($cnx);
		$objConfiguracion    = new ClsConfiguracion($cnx);

		$persona          = new BeanPersona();
		$personaNatural   = new BeanPersonaNatural();
		$usuario          = new BeanUsuario();
		$relacion         = new BeanRelacion();
		$personaDocumento = new BeanPersonaDocumento();
		$personaCorreo    = new BeanPersonaCorreo();
		$personaTelefono  = new BeanPersonaTelefono();
		$configuracion    = new BeanConfiguracion();

		$objPersona->beginTransaction() ;

		// verificar si el dni ya esta registrado

		$personaDocumento->setNumero($dni);
		$personaDocumento->setIdTipoDocumento(1);
		$data_dni = $objPersonaDocumento->get_by_idtipodocumento_and_numero($personaDocumento);

		// verificar si el correo ya esta registrado

		$personaCorreo->setCorreo($correo);
		$data_correo = $objPersonaCorreo->get_by_correo($personaCorreo);

		// validar resultado

		if ( count($data_dni) == 0 && count($data_correo) == 0 ) {
			// consultar configuraciones

			$configuracion->setIdConfiguracion(1);
			$data_conf_clave = $objConfiguracion->get_by_codigo($configuracion);
			$conf_clave = isset($data_conf_clave[0]['valor']) ? $data_conf_clave[0]['valor'] : '123456';

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

			$personaDocumento->setIdTipoDocumento(1);
			$personaDocumento->setIdPersona($idpersona);
			$personaDocumento->setNumero($dni);
			$objPersonaDocumento->set($personaDocumento);

			// telefono

			$personaTelefono->setIdTipoTelefono(2);
			$personaTelefono->setIdPersona($idpersona);
			$personaTelefono->setNumero($telefono);
			$objPersonaTelefono->set($personaTelefono);

			// correo

			$personaCorreo->setIdTipoCorreo(1);
			$personaCorreo->setIdPersona($idpersona);
			$personaCorreo->setCorreo($correo);
			$objPersonaCorreo->set($personaCorreo);

			// usuario

			$usuario->setIdPersona($idpersona);
			$usuario->setIdRol(3);
			$usuario->setIdTipoRelacion(3);
			$usuario->setUsuario($correo);
			$usuario->setClave(md5($conf_clave));
			$objUsuario->set($usuario);

			// relacion

			$relacion->setIdPersonaIndep($idempresa);
			$relacion->setIdTipoRelacion(3);
			$relacion->setIdPersonaDepen($idpersona);
			$relacion->setReferencia('usuario');
			$objRelacion->set($relacion);

			$res = array('msg' => 'Usuario registrado correctamente', 'error' => false, 'data' => array());
		}
		else{
			$msj = '' ;

			if ( count($data_dni) > 0 ) {
				$msj.='El DNI ya existe / ';
			}
			if ( count($data_correo) > 0 ) {
				$msj.='El CORREO ya existe / ';
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