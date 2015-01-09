'use strict';

app.service('vehiculoService', function($http){

	this.getTipoVehiculo = function(){
        return $http.get('data/ajax/vehiculo/getTipoVehiculo.php');
	};
	this.setVehiculo = function(vehiculo){
        return $http.post('data/ajax/vehiculo/setVehiculo.php', vehiculo);
	};
	this.getVehiculo = function(){
        return $http.get('data/ajax/vehiculo/getVehiculo.php');
	};
	this.getVehiculoByIdVehiculo = function(idvehiculo){
        var url_    = 'data/ajax/vehiculo/getVehiculoByIdVehiculo.php';
        var params_ = {'idvehiculo': idvehiculo} ;
        return $http.get(url_, {'params': params_});
	};
	this.updVehiculo = function(vehiculo){
        return $http.put('data/ajax/vehiculo/updVehiculo.php', vehiculo) ;
	}

});