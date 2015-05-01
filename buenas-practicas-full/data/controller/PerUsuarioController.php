<?php
# Autor: Armando Enrique Pisfil Puemape tw: @armandoaepp
 class PerUsuarioController
{
    private $cnx;

    public function __construct($cnx = null)
    {
        $this->cnx = $cnx;
    }

    public function ctrl_get_perusuario_by_usuario_password($params = array())
    {
        try
        {
            extract($params) ;
            $objPerusuario  = new ClsPerUsuario();
            $bean_perusuario = new BeanPerUsuario();

            $bean_perusuario->setPerUsuario($perusuario);
            $bean_perusuario->setPerPassword($perpassword);

            $data = $objPerusuario->get_perusuario_by_usuario_password($bean_perusuario) ;
            return $data ;
        }
        catch (Exception $e)
        {
            throw new Exception($e->getMessage());
        }
    }

    public function ctrl_set_perusuario($params = array() )
    {
        try
        {

            extract($params) ;

            $objPerusuario  = new ClsPerUsuario($this->cnx);
            $bean_perusuario = new BeanPerUsuario();

            $bean_perusuario->setIdPerUsuario($idperusuario);
            $bean_perusuario->setPerApellidos($perapellidos);
            $bean_perusuario->setPerNombre($pernombre);
            $bean_perusuario->setPerUsuario($perusuario);
            $bean_perusuario->setPerPassword($perpassword);
            $bean_perusuario->setFechaReg($fechareg);
            $bean_perusuario->setEstado($estado);

            $data = $objPerusuario->set_perusuario($bean_perusuario) ;
            return $data ;
        }
        catch (Exception $e)
        {
            throw new Exception($e->getMessage());
        }
    }

    public function ctrl_get_perusuario_by_id($id)
    {
        try
        {
            $objPerusuario  = new ClsPerUsuario();
            $bean_perusuario = new BeanPerUsuario();

            $bean_perusuario->setId($id);
            $data = $objPerusuario->get_perusuario() ;
            return $data;
        }
        catch (Exception $e)
        {
            throw new Exception($e->getMessage());
        }
    }

    public function ctrl_upd_perusuario($params = array())
    {
        try
        {

            extract($params) ;

            $objPerusuario  = new ClsPerUsuario($this->cnx);
            $bean_perusuario = new BeanPerUsuario();

            $bean_perusuario->setIdPerUsuario($idperusuario);
            $bean_perusuario->setPerApellidos($perapellidos);
            $bean_perusuario->setPerNombre($pernombre);
            $bean_perusuario->setPerUsuario($perusuario);
            $bean_perusuario->setPerPassword($perpassword);
            $bean_perusuario->setFechaReg($fechareg);
            $bean_perusuario->setEstado($estado);

            $data = $objPerusuario->upd_perusuario($bean_perusuario) ;
            return $data;
        }
        catch (Exception $e)
        {
           throw new Exception($e->getMessage());
        }
    }

}
