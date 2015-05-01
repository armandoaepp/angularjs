<?php
# Autor: Armando Enrique Pisfil Puemape tw: @armandoaepp
 class CuentaController extends ClsCuenta
{
    private $cnx;

    public function __construct($cnx = null)
    {
        $this->cnx = $cnx;
    }

    public function ctrl_get_cuenta_by_tipocli_idcli($params = array() )
    {
        try
        {
           extract($params) ;

            $objCuenta  = new ClsCuenta($this->cnx);
            $bean_cuenta = new BeanCuenta();

            $bean_cuenta->setTipoCli($tipocli);
            $bean_cuenta->setIdCli($idcli);

            $data = $objCuenta->get_cuenta_by_tipocli_idcli($bean_cuenta) ;
            return $data ;
        }
        catch (Exception $e)
        {
            throw new Exception($e->getMessage());
        }
    }

    public function ctrl_upd_cuenta_saldo_mas_monto_by_idcuenta($params = array())
    {
        try
        {

            extract($params) ;

            $objCuenta  = new ClsCuenta($this->cnx);
            $bean_cuenta = new BeanCuenta();

            $bean_cuenta->setIdCuenta($idcuenta);
            $bean_cuenta->setSaldo($monto);

            $data = $objCuenta->upd_cuenta_saldo_mas_monto_by_idcuenta($bean_cuenta) ;
            return $data;
        }
        catch (Exception $e)
        {
           throw new Exception($e->getMessage());
        }
    }

    public function ctrl_set_cuenta($params = array() )
    {
        try
        {

            extract($params) ;

            $objCuenta  = new ClsCuenta($this->cnx);
            $bean_cuenta = new BeanCuenta();

            $bean_cuenta->setIdCuenta($idcuenta);
            $bean_cuenta->setTipoCli($tipocli);
            $bean_cuenta->setIdCli($idcli);
            $bean_cuenta->setSaldo($saldo);

            $data = $objCuenta->set_cuenta($bean_cuenta) ;
            return $data ;
        }
        catch (Exception $e)
        {
            throw new Exception($e->getMessage());
        }
    }

    public function ctrl_get_cuenta_by_id($id)
    {
        try
        {
            $objCuenta  = new ClsCuenta();
            $bean_cuenta = new BeanCuenta();

            $bean_cuenta->setId($id);
            $data = $objCuenta->get_cuenta() ;
            return $data;
        }
        catch (Exception $e)
        {
            throw new Exception($e->getMessage());
        }
    }



}
