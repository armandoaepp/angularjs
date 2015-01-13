<?php

header('content-type: application/json; charset=utf-8');

require_once '../../autoload.php';

if(isset($_GET["accion"]))
{
 	$evento = $_GET["accion"];
 	// echo "GET :: ".$evento ;
}
elseif (isset($_POST))
{

	$inputs = json_decode(file_get_contents("php://input"));
	$evento = $inputs->accion;
}



switch($evento)
{
	case "list":

		$pruebaController = new pruebaController() ;
		$data =	$pruebaController->get_prueba() ;

		$jsn  = json_encode($data);
		echo $jsn ;
  	break;

  	case "set":
  		// echo " :: ".$evento ;
		$pruebaController = new pruebaController() ;
		$data =	$pruebaController->set_prueba() ;

		$jsn  = json_encode($data);
		echo $jsn ;
  	break;

  	case "getid":

  		$id = $_GET["id"] ;

		$pruebaController = new pruebaController() ;
		$data =	$pruebaController->get_prueba_by_id($id) ;

		$jsn  = json_encode($data);
		print_r($jsn) ;
  	break;

  	case "update":

  		$pruebaController = new pruebaController() ;
		$data =	$pruebaController->upd_prueba($inputs) ;

		$jsn  = json_encode($data);
		print_r($jsn) ;
  	break;

}
