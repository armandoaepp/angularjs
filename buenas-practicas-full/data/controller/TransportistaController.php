<?php
# Autor: Armando Enrique Pisfil Puemape tw: @armandoaepp
 class TransportistaController
{
    private $cnx;

    public function __construct($cnx = null)
    {
        $this->cnx = $cnx;
    }
# usp_get_transportita_by_estado
    public function ctrl_get_transportista_by_estado($estado)
    {
        try
        {
            $objTransportista   = new ClsTransportista();
            $bean_transportista = new BeanTransportista();

            $bean_transportista->setEstado($estado);
            $data = $objTransportista->get_transportista_by_estado( $bean_transportista) ;
            return $data ;
        }
        catch (Exception $e)
        {
            throw new Exception("Error: ".$e->getMessage());
        }
    }

    public function ctrl_get_transportista_saldo_by_estado($estado)
    {
        try
        {
            $objTransportista   = new ClsTransportista();
            $bean_transportista = new BeanTransportista();

            $bean_transportista->setEstado($estado);
            $data = $objTransportista->get_transportista_saldo_by_estado( $bean_transportista) ;
            return $data ;
        }
        catch (Exception $e)
        {
            throw new Exception("Error: ".$e->getMessage());
        }
    }

    public function ctrl_get_transportista_by_idtransp($params = array())
    {
        try
        {
            extract($params);

            // $idtransp = $idtransp ;

            $objTransportista   = new ClsTransportista();
            $bean_transportista = new BeanTransportista();

            $bean_transportista->setIdTtransp($idtransp);
            $data = $objTransportista->get_transportista_by_idtransp( $bean_transportista) ;
            return $data ;
        }
        catch (Exception $e)
        {
            throw new Exception("Error: ".$e->getMessage());
        }
    }

    public function ctrl_get_transportista_info_by_idtransp($params = array())
    {
        try
        {
            extract($params);

            // $idtransp = $idtransp ;

            $objTransportista   = new ClsTransportista();
            $bean_transportista = new BeanTransportista();

            $bean_transportista->setIdTtransp($idtransp);
            $data = $objTransportista->get_transportista_info_by_idtransp( $bean_transportista) ;
            return $data ;
        }
        catch (Exception $e)
        {
            throw new Exception("Error: ".$e->getMessage());
        }
    }



}



