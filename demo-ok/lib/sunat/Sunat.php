<?php
class Sunat{
	private $estado;
	private $situacion;
	private $ruc;
	private $razonsocial;
	private $direccion;
	private $tipo;
	private $codigo;
	private $mensaje;

	function __construct($ruc = ""){
		$this->ruc = $ruc;
	}

	public function consultar(){
		$url = $this->configurar();
		$datos = $this->buscar($url);
		$this->extraer($datos);
	}

	public function configurar(){
		// direccion donde se realizará la consulta

		$web = "http://www.sunat.gob.pe/w/wapS01Alias" ;

		// parametros que se consultaran

		$param = http_build_query( array("ruc" => $this->ruc) ) ;

		// generando la ruta con los parametros

		$url = $web.'?'.$param;

		// enviar url

		return $url;
	}

	private function buscar($url){
		// vector respuesta

		$datos = array();

		// realizando la consulta

		$content = file_get_contents($url);

		// extraer datos

		preg_match_all('/<b>Estado.<\/b>[a-zA-Z\s]+/', $content, $estados);
		preg_match_all('/<small>Situaci&#xF3;n.<b>.+<\/b><\/small>/', $content, $situaciones);
		preg_match_all('/[0-9]{11} - [0-9a-zA-Z\s.]+/', $content, $personal);
		preg_match_all('/<b>Direcci&#xF3;n.<\/b><br\/>.+<\/small>/', $content, $direcciones);
		preg_match_all('/<b>Tipo.<\/b><br\/> .+<\/small>/', $content, $tipos);

		// validar resultado

		if (count($estados[0]) > 0) {
			// validando existencia de estado

				if (!empty($estados[0][0])) {
					$estado = str_replace("<b>Estado.</b>", "", $estados[0][0]) ;
				}
				else{
					$estado = "" ;
				}

			// validando existencia de situacion

				if (!empty($situaciones[0][0])) {
					$situacion = str_replace(array("<small>Situaci&#xF3;n.<b>","</b></small>"), "", $situaciones[0][0]) ;
				}
				else{
					$situacion = "" ;
				}

			// validando existencia de ruc y razon social

				if (!empty($personal[0][0])) {
					$dato = explode("-", $personal[0][0]) ;
					$ruc = $dato[0] ;
					$razonsocial = $dato[1] ;
				}
				else{
					$ruc = "" ;
					$razonsocial = "" ;
				}

			// validando existencia de direccion

				if (!empty($direcciones[0][0])) {
					$direccion = str_replace(array("<b>Direcci&#xF3;n.</b><br/>","</small>"), "", $direcciones[0][0]) ;
				}
				else{
					$direccion = "" ;
				}

			// validando existencia de tipos

				if (!empty($tipos[0][0])) {
					$tipo = str_replace(array("<b>Tipo.</b><br/>","</small>"), "", $tipos[0][0]) ;
				}
				else{
					$tipo = "" ;
				}

			// capturando datos

				$datos['estado']      = trim($estado) ;
				$datos['situacion']   = trim($situacion) ;
				$datos['ruc']         = trim($ruc) ;
				$datos['razonsocial'] = trim($razonsocial) ;
				$datos['direccion']   = trim($direccion) ;
				$datos['tipo']        = trim($tipo) ;

			    if (trim($estado) == "ACTIVO")
			    {
				    if (trim($situacion) == "HABIDO")
				    {
						$datos['codigo']  = 200 ;
						$datos['mensaje'] = "RUC Activo y Habido" ;
					}
					else
				    {
						$datos['codigo']  = 500 ;
						$datos['mensaje'] = "RUC Activo pero no Habido" ;
				    }
				}
				else if (trim($estado) == "BAJA DE OFICIO")
			    {
					$datos['codigo']  = 501 ;
					$datos['mensaje'] = "RUC Baja de Oficio" ;
				}
			    else if (trim($estado) == "BAJA DEFINITIVA")
			    {
					$datos['codigo']  = 502 ;
					$datos['mensaje'] = "RUC Baja Definitiva" ;
				}
				else if (trim($estado) == "SUSPENSION TEMPORAL")
			    {
					$datos['codigo']  = 503 ;
					$datos['mensaje'] = "RUC Suspensión Temporal" ;
				}
		}
		else{
			$datos['codigo']      = -1 ;
			$datos['estado']      = "NO EXISTE" ;
			$datos['mensaje']     = "El RUC no existe" ;
			$datos['situacion']   = "" ;
			$datos['ruc']         = "" ;
			$datos['razonsocial'] = "" ;
			$datos['direccion']   = "" ;
			$datos['tipo']        = "" ;
		}

		return $datos;
	}

	private function extraer($datos){
		$this->estado      = $datos['estado'];
		$this->situacion   = $datos['situacion'];
		$this->ruc         = $datos['ruc'];
		$this->razonsocial = $datos['razonsocial'];
		$this->direccion   = $datos['direccion'];
		$this->tipo        = $datos['tipo'];
		$this->codigo      = $datos['codigo'];
		$this->mensaje     = $datos['mensaje'];
	}

	public function getEstado(){
		return $this->estado;
	}
	public function getSituacion(){
		return $this->situacion;
	}
	public function setRuc($value){
		$this->ruc = $value;
	}
	public function getRuc(){
		return $this->ruc;
	}
	public function getRazonsocial(){
		return $this->razonsocial;
	}
	public function getDireccion(){
		return $this->direccion;
	}
	public function getTipo(){
		return $this->tipo;
	}
	public function getCodigo(){
		return $this->codigo;
	}
	public function getMensaje(){
		return $this->mensaje;
	}

}