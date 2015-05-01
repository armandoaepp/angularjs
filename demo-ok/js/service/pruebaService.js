'use strict';

app.service('pruebaService', function($http){

	this.getPruebas = function(params_){
 		  var url_    = 'data/ajax/prueba/indexPrueba.php';
        // var params_ = {'accion': accion} ;
        return $http.get(url_, {'params': params_});
	};

	this.setPrueba = function(prueba){
        return $http.post('data/ajax/prueba/indexPrueba.php', prueba);
	};

	this.getPruebaById = function(params_){
        var url_    = 'data/ajax/prueba/indexPrueba.php';
        // var params_ = {'accion': accion} ;
        return $http.get(url_, {'params': params_});
	};

	this.updatePrueba = function(prueba){
        return $http.post('data/ajax/prueba/indexPrueba.php', prueba) ;
	}



});