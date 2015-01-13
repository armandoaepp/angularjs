<?php
	// tenemos que llamar a "session_start()" siempre que queramos utilizar sesiones
	// ya sea para acceder a ellas o para almacenar valores
	session_start();

	// verificamos si la session "usuario" contine algun objeto
	if( isset($_SESSION['idusuario']) ) {
		print ($_SESSION['idusuario']) ;
	}