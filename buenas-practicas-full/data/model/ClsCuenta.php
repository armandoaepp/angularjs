<?php
# Clase Generada desde PlaneaTec-PHP - Creado por @armandaepp
class ClsCuenta extends ClsConexion {
# CONSTRUCT
    public function __construct($cnx  = null)
    {
        $this->conn = $cnx;
    }

# Método get Seleccionar todos
    public function get_cuenta_by_tipocli_idcli($bean_cuenta)
    {
        $tipocli = $bean_cuenta->getTipoCli();
        $idcli   = $bean_cuenta->getIdCli();

        $this->query = "CALL usp_app_get_cuenta_by_tipocli_idcli( '$tipocli' , '$idcli')";
        $this->execute_query();
        $data = $this->rows ;
        return $data;
    }
# Método Actualizar (agregar un monto al saldo)
    public function upd_cuenta_saldo_mas_monto_by_idcuenta($bean_cuenta)
    {
        $idcuenta = $bean_cuenta->getIdCuenta();
        $monto_agregar = $bean_cuenta->getSaldo();

        $this->query = "CALL usp_app_upd_cuenta_saldo_mas_monto_by_idcuenta('$idcuenta','$monto_agregar')";
        $this->execute_query();
        $data = $this->rows ;
        return $data;

    }

# Método Insertar
    public function set_cuenta($bean_cuenta)
    {
        $idcuenta = $bean_cuenta->getIdCuenta();
        $tipocli = $bean_cuenta->getTipoCli();
        $idcli = $bean_cuenta->getIdCli();
        $saldo = $bean_cuenta->getSaldo();

        $this->query = "CALL usp_set_cuenta('$idcuenta','$tipocli','$idcli','$saldo')";
        $this->execute_query();
        $data = $this->rows ;
        return $data;

    }


# Método Buscar por ID
    public function get_cuenta_by_idcuenta($bean_cuenta)
    {
        $idcuenta = $bean_cuenta->getIdCuenta();

        $this->query = "CALL usp_get_cuenta_by_idcuenta('$idcuenta')";
        $this->execute_query();
        $data = $this->rows ;
        return $data;
    }

}
?>