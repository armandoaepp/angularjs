<?php

header('content-type: application/json; charset=utf-8');

require_once '../../autoload.php';

if(isset($_GET["accion"]))
{
 	$evento=$_GET["accion"];
}
elseif (isset($_POST["accion"]))
{
	$evento = $_POST["accion"];
}
else
{
	$evento="Listar";
}

switch($evento)
{
  case "rpt-extinputf":

		/*$rpta =	get_rpt_ExtInputF() ;
		$jsn  = json_encode($rpta);
		print_r($jsn);*/


		$cellocatorController = new cellocatorController() ;
		$data_inputf =	$cellocatorController->get_rpt_ExtInputF() ;
		$data_inputf = $data_inputf["data"] ;

	/*	$usuarioController = new usuarioController() ;
		$data_user = $usuarioController->get_usuario_by_idusuario() ;
		$data_user =  $data_user["data"] ;*/


		$jsn1  = json_encode($data_inputf);
		echo $jsn1 ;

		/*$jsn2  = json_encode($data_user);
		echo $jsn2 ;
*/


		// $jsn  = json_encode($rpta);
		// print_r($jsn1 ." - ". $jsn2);

  break;


}
