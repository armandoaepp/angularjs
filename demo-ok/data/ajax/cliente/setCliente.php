<?php
	header('content-type: application/json; charset=utf-8');

	$data = json_decode(file_get_contents("php://input"));

	$emp_ruc         = mysql_real_escape_string($data->empruc);
	$emp_razonsocial = mysql_real_escape_string($data->emprazonsocial);
	$emp_telefono    = mysql_real_escape_string($data->emptelefono);
	$emp_fax         = mysql_real_escape_string($data->empfax);
	$emp_direccion   = mysql_real_escape_string($data->empdireccion);

	$cto_nombres = mysql_real_escape_string($data->ctonombres);
	$cto_apepat  = mysql_real_escape_string($data->ctoapepat);
	$cto_apemat  = mysql_real_escape_string($data->ctoapemat);
	$cto_mobil   = mysql_real_escape_string($data->ctomobil);
	$cto_correo  = mysql_real_escape_string($data->ctocorreo);

	try {
		// generar los objetos

		include '../../autoload.php';

		$objPersona          = new ClsPersona();
		$cnx                 = $objPersona->get_connection() ;
		$objPersonaJuridica  = new ClsPersonaJuridica($cnx);
		$objPersonaDocumento = new ClsPersonaDocumento($cnx);
		$objPersonaTelefono  = new ClsPersonaTelefono($cnx);
		$objPersonaCorreo    = new ClsPersonaCorreo($cnx);
		$objPersonaDireccion = new ClsPersonaDireccion($cnx);
		$objCuenta           = new ClsCuenta($cnx);
		$objRelacion         = new ClsRelacion($cnx);
		$objUsuario          = new ClsUsuario($cnx);
		$objConfiguracion    = new ClsConfiguracion($cnx);
		$objPersonaNatural   = new ClsPersonaNatural($cnx);

		$persona          = new BeanPersona();
		$personaJuridica  = new BeanPersonaJuridica();
		$personaDocumento = new BeanPersonaDocumento();
		$personaTelefono  = new BeanPersonaTelefono();
		$personaCorreo    = new BeanPersonaCorreo();
		$personaDireccion = new BeanPersonaDireccion();
		$cuenta           = new BeanCuenta();
		$relacion         = new BeanRelacion();
		$usuario          = new BeanUsuario();
		$configuracion    = new BeanConfiguracion();
		$personaNatural   = new BeanPersonaNatural();

		$objPersona->beginTransaction() ;

		$personaDocumento->setNumero($emp_ruc);
		$personaTelefono->setNumero($cto_mobil);
		$personaCorreo->setCorreo($cto_correo);

		$persona->setDocumento($personaDocumento);
		$persona->setTelefono($personaTelefono);
		$persona->setCorreo($personaCorreo);
		$data = $objPersona->validar_cliente($persona);

		if ( $data[0]['ruc'] == '' && $data[0]['correo'] == '' && $data[0]['movil'] == '' ) {
			// consultar configuraciones

			$configuracion->setIdConfiguracion(1);
			$data_conf_clave     = $objConfiguracion->get_by_codigo($configuracion);
			$configuracion->setIdConfiguracion(2);
			$data_conf_idpersona = $objConfiguracion->get_by_codigo($configuracion);

			$conf_clave     = isset($data_conf_clave[0]['valor'])		? $data_conf_clave[0]['valor']		: 1;
			$conf_idpersona = isset($data_conf_idpersona[0]['valor'])	? $data_conf_idpersona[0]['valor']	: '123+-*';

			// EMPRESA

			$persona->setTipo(2);
			$persona->setNombre($emp_razonsocial);
			$data_juridica = $objPersona->set($persona);

			// extraer codigo de la persona registada

			$idpersona_empresa = $data_juridica[0]["idpersona"];

			// registrar persona juridica

			$personaJuridica->setIdPersona($idpersona_empresa);
			$personaJuridica->setRazonSocial($emp_razonsocial);
			$objPersonaJuridica->set($personaJuridica);

			// registrar documento (ruc)

			$personaDocumento->setIdTipoDocumento(3);
			$personaDocumento->setIdPersona($idpersona_empresa);
			$personaDocumento->setNumero($emp_ruc);
			$objPersonaDocumento->set($personaDocumento);

			// registrar telefono (fijo)

			$personaTelefono->setIdTipoTelefono(1);
			$personaTelefono->setIdPersona($idpersona_empresa);
			$personaTelefono->setNumero($emp_telefono);
			$objPersonaTelefono->set($personaTelefono);

			// registrar telefono (fax)

			$personaTelefono->setIdTipoTelefono(4);
			$personaTelefono->setIdPersona($idpersona_empresa);
			$personaTelefono->setNumero($emp_fax);
			$objPersonaTelefono->set($personaTelefono);

			// registrar direccion (fiscal)

			$personaDireccion->setIdTipoDireccion(1);
			$personaDireccion->setIdPersona($idpersona_empresa);
			$personaDireccion->setDireccion($emp_direccion);
			$objPersonaDireccion->set($personaDireccion);

			// registrar relacion

			$relacion->setIdPersonaIndep($conf_idpersona);
			$relacion->setIdTipoRelacion(2);
			$relacion->setIdPersonaDepen($idpersona_empresa);
			$relacion->setReferencia('cliente');
			$objRelacion->set($relacion);

			// registrar cuenta

			$cuenta->setIdPersona($idpersona_empresa);
			$cuenta->setIdTipoRelacion(2);
			$cuenta->setNumero($emp_ruc);
			$objCuenta->set($cuenta);

			// CONTACTO

			$persona->setTipo(1);
			$persona->setNombre($cto_nombres);
			$data_narutal = $objPersona->set($persona);

			// extraer codigo de la persona registada

			$idpersona_contacto = $data_narutal[0]["idpersona"];

			// registrar persona natural

			$personaNatural->setIdPersona($idpersona_contacto);
			$personaNatural->setNombres($cto_nombres);
			$personaNatural->setApePat($cto_apepat);
			$personaNatural->setApeMat($cto_apemat);
			$objPersonaNatural->set($personaNatural);

			// registrar telefono (movil)

			$personaTelefono->setIdTipoTelefono(2);
			$personaTelefono->setIdPersona($idpersona_contacto);
			$personaTelefono->setNumero($cto_mobil);
			$objPersonaTelefono->set($personaTelefono);

			// registrar correo (personal)

			$personaCorreo->setIdTipoCorreo(1);
			$personaCorreo->setIdPersona($idpersona_contacto);
			$personaCorreo->setCorreo($cto_correo);
			$objPersonaCorreo->set($personaCorreo);

			// registrar relacion

			$relacion->setIdPersonaIndep($idpersona_empresa);
			$relacion->setIdTipoRelacion(3);
			$relacion->setIdPersonaDepen($idpersona_contacto);
			$relacion->setReferencia('usuario');
			$objRelacion->set($relacion);

			// registrar usuario

			$usuario->setIdPersona($idpersona_contacto);
			$usuario->setIdRol(2);
			$usuario->setIdTipoRelacion(3);
			$usuario->setUsuario($cto_correo);
			$usuario->setClave(md5($conf_clave));
			$objUsuario->set($usuario);

			$res = array('msg' => 'Cliente registrado correctamente', 'error' => false, 'data' => array());
		}
		else{
			$msj = '' ;

			if ( $data[0]['ruc'] != '' ) {
				$msj.='El RUC ya existe / ';
			}
			if ( $data[0]['correo'] != '' ) {
				$msj.='El CORREO ya existe / ';
			}
			if ( $data[0]['movil'] != '' ) {
				$msj.='El MOVIL ya existe / ';
			}

			$msj = trim($msj, " / ");

			$res = array('msg' => $msj, 'error' => true, 'data' => array());
		}

		// aceptando la transaccion

		$objPersona->commit() ;

		// realizar las validaciones


        $jsn = json_encode($res);
        print_r($jsn);
	}
	catch (Exception $e) {
		// cancelando la transaccion

		$objPersona->rollback() ;

		// realizar las validaciones

	    $res = array('msg' => $e->getMessage(), 'error' => true, 'data' => array());
	    $jsn = json_encode($res);
	    print_r($jsn);
	}