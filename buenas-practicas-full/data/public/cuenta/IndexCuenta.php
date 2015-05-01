<?php
# Autor: Armando Enrique Pisfil Puemape tw: @armandoaepp
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

switch($evento)
{
    case "get_cuenta_idcli":
        try
        {

            $tipocli = $inputs->tipo;
            $idcli   = $inputs->idcliente;

            $params = array(
               'tipocli'=> $tipocli,
               'idcli'=> $idcli,
            ) ;


            $cuentaCtrl = new CuentaController() ;
            $data = $cuentaCtrl->ctrl_get_cuenta_by_tipocli_idcli($params) ;
            $data = array('msg' => 'Se encontraron registros', 'error' => false, 'data' => $data);
        }
        catch (Exception $e)
        {
            $data = array('msg' => 'Se encontraron registros', 'error' => false, 'data' => array());
        }

        $jsn  = json_encode($data);
        print_r($jsn) ;
    break;

    case "upd_add_saldo":
        try
        {
            $objConexion = new ClsConexion();
            $cnx = $objConexion->get_connection();

            $cuentaCtrl = new CuentaController($cnx) ;
            $objConexion->beginTransaction();

            $idcuenta = $inputs->idcuenta;
            $saldo    = $inputs->monto;

            /*$idcuenta = 481;
            $saldo    = 200;*/

            $params = array(
               'idcuenta' => $idcuenta,
               'monto' => $saldo,
            ) ;

            $data = $cuentaCtrl->ctrl_upd_cuenta_saldo_mas_monto_by_idcuenta($params) ;

            $data = array('msg' => 'Se encontraron registros', 'error' => false, 'data' => $data);

            $objConexion->commit();


        }
        catch (Exception $e)
        {
            $objConexion->rollback();
            $data = array('msg' => $e->getMessage(), 'error' => true, 'data' => array());
        }

        $jsn  = json_encode($data);
        print_r($jsn) ;
    break;

    case "set":

        try
        {
            $objConexion = new ClsConexion();
            $cnx = $objConexion->get_connection();

            $cuentaCtrl = new CuentaController($cnx) ;
            $objConexion->beginTransaction();

            $idcuenta = $inputs->IdCuenta;
            $tipocli = $inputs->TipoCli;
            $idcli = $inputs->IdCli;
            $saldo = $inputs->Saldo;

            $params = array(
               $idcuenta,
               $tipocli,
               $idcli,
               $saldo,
            ) ;

            $data = $cuentaCtrl->ctrl_set_cuenta($params) ;

            $objConexion->commit();
        }
        catch (Exception $e)
        {
            $objConexion->rollback();
            $data = array('msg' => $e->getMessage(), 'error' => true, 'data' => array());
        }

        $jsn  = json_encode($data);
        print_r($jsn) ;
    break;

    case "getid":
        try
        {
            $id = $_GET["id"] ;
            $cuentaCtrl = new CuentaController() ;
            $data = $cuentaCtrl->ctrl_get_cuenta_idcuenta( $id) ;
            $data = array('msg' => 'Se encontraron registros', 'error' => false, 'data' => $data);
        }
        catch (Exception $e)
        {
            $data = array('msg' => 'Se encontraron registros', 'error' => false, 'data' => array());
        }

        $jsn  = json_encode($data);
        print_r($jsn) ;
    break;



}
