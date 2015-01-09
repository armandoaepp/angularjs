<?php
class ClsAccesoSistema extends ClsConexion {
	# Constructor
	public function __construct($cnx  = null)
	{
		$this->conn = $cnx;
	}
	# Metodo para mostrar controles(modulos, menus y botones)
	public function get_by_idusuario($beanAccesoSistema)
	{
		$idusuario = $beanAccesoSistema->getIdUsuario();

		$this->query = "CALL usp_get_acceso_sistema_by_idusuario(".$idusuario.");";

		$this->execute_query();

		$data = $this->rows ;

		return $data;
	}
	# Listar menus horizontal
	public function get_menu_by_idusuario_idcontrolpadre($beanAccesoSistema)
	{
		$idusuario		= $beanAccesoSistema->getIdUsuario();
		$idcontrolpadre	= $beanAccesoSistema->getControl()->getIdControlPadre();

		$this->query = "CALL usp_get_menu_by_idusuario_and_idcontrolpadre(".$idusuario.",".$idcontrolpadre.");";

		//return $this->query;

		$this->execute_query();

		$data = $this->rows ;

		return $data;
	}
	# Listar menu vertical
	public function get_aside_by_idusuario($beanAccesoSistema)
	{
		$idusuario = $beanAccesoSistema->getIdUsuario();

		$this->query = "CALL usp_get_aside_by_idusuario(".$idusuario.");";

		//return $this->query;

		$this->execute_query();

		$data = $this->rows ;

		return $data;
	}
}