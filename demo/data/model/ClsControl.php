<?php 
class ClsControl extends ClsConexion {
	# Constructor 
	public function __construct($cnx  = null)
	{
		$this->conn = $cnx;
	}
}