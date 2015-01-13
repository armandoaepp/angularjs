<?php

class pruebaController
{

	function get_prueba()
	{
		try
		{
			$objPrueba  = new ClsPrueba();
			$beanPrueba = new BeanPrueba();

			$data = $objPrueba->get_prueba($beanPrueba) ;

		    $rpta = array('msg' => 'Listado correcto', 'error' => false, 'data' => $data);
		}
		catch (Exception $e)
		{
		    $rpta = array('msg' => $e->getMessage(), 'error' => true, 'data' => array());
		}

		return $rpta ;
	}

	function set_prueba()
	{
		try
		{
			$inputs = json_decode(file_get_contents("php://input"));

			$nombres   = $inputs->Nombres ;
			$apellidos = $inputs->Apellidos ;

			$objPrueba  = new ClsPrueba();
			$beanPrueba = new BeanPrueba();

			$beanPrueba->setNombres($nombres);
			$beanPrueba->setApellidos($apellidos);

			$data = $objPrueba->set_prueba($beanPrueba) ;

		    $rpta = array('msg' => ' Registro Correcto', 'error' => false, 'data' => $data);
		}
		catch (Exception $e)
		{
		    $rpta = array('msg' => $e->getMessage(), 'error' => true, 'data' => array());
		}

		return $rpta ;
	}

	function upd_prueba($inputs)
	{
		try
		{
			$inputs = json_decode(file_get_contents("php://input"));

			$id        = $inputs->id ;
			$nombres   = $inputs->Nombres ;
			$apellidos = $inputs->Apellidos ;

			$objPrueba  = new ClsPrueba();
			$beanPrueba = new BeanPrueba();

			$beanPrueba->setId($id);
			$beanPrueba->setNombres($nombres);
			$beanPrueba->setApellidos($apellidos);

			$data = $objPrueba->upd_prueba($beanPrueba) ;

		    $rpta = array('msg' => 'Listado correcto', 'error' => false, 'data' => $data);
		}
		catch (Exception $e)
		{
		    $rpta = array('msg' => $e->getMessage(), 'error' => true, 'data' => array());
		}

		return $rpta ;
	}

	function get_prueba_by_id($id)
	{
		try
		{
			$objPrueba  = new ClsPrueba();
			$beanPrueba = new BeanPrueba();

			$beanPrueba->setId($id);

			$data = $objPrueba->get_prueba_by_id($beanPrueba) ;

		    $rpta = array('msg' => 'persona id correcto', 'error' => false, 'data' => $data);
		}
		catch (Exception $e)
		{
		    $rpta = array('msg' => $e->getMessage(), 'error' => true, 'data' => array());
		}

		return $rpta ;
	}

}