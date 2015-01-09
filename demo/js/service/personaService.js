'use strict';

app.service('personaService', function($http){

	this.getPersona = function(){
        return $http.get('data/ajax/persona/getPersona.php');
	};

	this.setPersona = function(persona){
        return $http.post('data/ajax/persona/setPersona.php', persona);
	};

	this.getPersonaByIdPersona= function(idpersona){

		var url_    = 'data/ajax/persona/getPersonaByIdPersona.php';
        var params_ = {'idpersona': idpersona} ;
        return $http.get(url_, {'params': params_});

	};
	/*
	this.getVehiculoByIdVehiculo = function(idvehiculo){
        var url_    = 'data/ajax/vehiculo/getVehiculoByIdVehiculo.php';
        var params_ = {'idvehiculo': idvehiculo} ;
        return $http.get(url_, {'params': params_});
	};
	this.updVehiculo = function(vehiculo){
        return $http.put('data/ajax/vehiculo/updVehiculo.php', vehiculo) ;
	}*/


});