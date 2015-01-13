<?php
	header('content-type: application/json; charset=utf-8');

	$data    = json_decode(file_get_contents('php://input'));

	$usuario_ = mysql_real_escape_string($data->usuario);
	$clave_   = md5(mysql_real_escape_string($data->clave));

	try {
		// generar los objetos

		require_once '../../autoload.php';
		/*require_once '../../model/ClsConexion.php';
		require_once '../../model/ClsUsuario.php';
		require_once '../../bean/BeanUsuario.php';*/
		$objUsuario = new ClsUsuario();
		$usuario    = new BeanUsuario();

		// realizar la consulta

		$usuario->setUsuario($usuario_);
		$usuario->setClave($clave_);
		$data = $objUsuario->get_by_usuario_and_clave($usuario) ;

		// realizar las validaciones

		if ( count($data) > 0 ) {
			session_start() ;

			$_SESSION['idusuario'] = $data[0]["idusuario"] ;
			$_SESSION['idpersona'] = $data[0]["idpersona"] ;

	        $res = array('msg' => 'Credenciales correctas', 'error' => false, 'data' => $data);
	        $jsn = json_encode($res);
	        print_r($jsn);
		}
		else{
		    $res = array('msg' => 'Credenciales incorrectas', 'error' => false, 'data' => array());
		    $jsn = json_encode($res);
		    print_r($jsn);
		}
	}
	catch (Exception $e) {
	    $res = array('msg' => $e->getMessage(), 'error' => true, 'data' => array());
	    $jsn = json_encode($res);
	    print_r($jsn);
	}

