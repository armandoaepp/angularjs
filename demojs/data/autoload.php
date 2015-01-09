<?php
	function loadModelFiles($file_name){
		$fullpath = '../../model/' . $file_name . '.php' ;
		if( file_exists($fullpath) ) {
			require $fullpath;
		}
	}

	function loadBeanFiles($file_name){
		$fullpath = '../../bean/' . $file_name . '.php' ;
		if( file_exists($fullpath) ) {
			require $fullpath;
		}
	}

	spl_autoload_register("loadModelFiles");
	spl_autoload_register("loadBeanFiles");