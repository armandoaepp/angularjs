<?php
    header('content-type: application/json; charset=utf-8');
    require_once '../../autoload.php';

if(isset($_GET["accion"]))
{
    $evento = $_GET["accion"];
}
elseif (isset($_POST))
{
    $inputs = json_decode(file_get_contents("php://input"));
    $evento = $inputs->accion;
}
 $data = array('msg' => 'Se encontraron registros', 'error' => false, 'data' => $evento);
echo json_encode($data);
// echo "evento".$evento ;