<?php
ob_start();
//Armando Enrique Pisfil Puemape tw: @armandoaepp
require_once "./PersonaController.php";

if(isset($_GET["accion"])){
	$evento=$_GET["accion"];
} elseif (isset($_POST["accion"])) {
	$evento = $_POST["accion"];
}else{
	$evento="Listar";
}
switch($evento){
	case "Registrar":
		$titulo= "Nuevo persona";
		$rpta=CRegistrar_persona();
		$contenido="Registrar_persona.php";
		$accionf= "?accion=Registrar";
		require_once "../layout.php";
	break;
}