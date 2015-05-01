<?php

class usuarioController
{

	function get_usuario_by_idusuario()
	{
		try
		{
			$objUsuario  = new ClsUsuario();
			$beanUsuario = new BeanUsuario();

			// $idusuario = $beanUsuario->setIdUsuario($_SESSION['idusuario']);
			$idusuario = $beanUsuario->setIdUsuario(10);
			$data = $objUsuario->get_by_codigo($beanUsuario) ;

		    $rpta = array('msg' => 'Listado correcto', 'error' => false, 'data' => $data);
		}
		catch (Exception $e)
		{
		    $rpta = array('msg' => $e->getMessage(), 'error' => true, 'data' => array());
		}

		return $rpta ;
	}




}