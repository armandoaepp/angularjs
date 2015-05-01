<?php
require_once "ClsConexion.php";
# Clase Generada desde PlaneaTec-PHP - Creado por @armandaepp
class ClsTransportista extends ClsConexion {
# CONSTRUCT
    public function __construct($cnx  = null)
    {
        $this->conn = $cnx;
    }

# Método
    public function get_transportista_by_estado($bean_transportista)
    {
        $estado = $bean_transportista->getEstado();

        $this->query = "CALL usp_get_transportista_by_estado('$estado')";
        $this->execute_query();
        $data = $this->rows ;
        return $data;
     }

# Método
    public function get_transportista_saldo_by_estado($bean_transportista)
    {
        $estado = $bean_transportista->getEstado();

        $this->query = "CALL usp_get_transportista_saldo_by_estado('$estado')";
        $this->execute_query();
        $data = $this->rows ;
        return $data;
     }

# Método Buscar por ID
    public function get_transportista_by_idtransp($bean_transportista)
    {
        $idtransp = $bean_transportista->getIdTtransp();

        $this->query = "CALL usp_get_transportista_by_idtransp('$idtransp')";
        $this->execute_query();
        $data = $this->rows ;
        return $data;
    }

    public function get_transportista_info_by_idtransp($bean_transportista)
    {
        $idtransp = $bean_transportista->getIdTtransp();

        $this->query = "CALL usp_get_transportista_info_by_idtransp('$idtransp')";
        $this->execute_query();
        $data = $this->rows ;
        return $data;
    }




}