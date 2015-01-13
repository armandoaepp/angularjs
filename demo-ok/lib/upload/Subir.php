<?php


//print_r($_FILES);
$ar = json_decode($_POST['conductor']);
echo  $ar->dni ;
		/*include_once '../../lib/upload/Upload.php';
		try {
			$upload = new Upload($_FILES['the_file']);

			$upload->setCarpeta('img/conductor/');
			$upload->setAlias('dni_');

			$upload->mover();

			$arrayName = array(
				'oldname' => $upload->getOldName(), 
				'newname' => $upload->getNewName(), 
				'directorio' => $upload->getDirectorio()
			);

			print_r($arrayName);
			#$tmp_name = $_FILES["the_file"]["tmp_name"];
			#$name     = $_FILES["the_file"]["name"];
	        #move_uploaded_file($tmp_name, "../../file/img/conductor/" . $name);
	        #echo $name;
		} catch (Exception $e) {
			echo $e;
}*/
