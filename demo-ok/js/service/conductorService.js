'use strict';

app.service('conductorService', function($http){
	this.getConductor = function(){
        return $http.get('data/ajax/conductor/getConductor.php');
	};
	this.setConductor = function(conductor){
        var config = {
            transformRequest: angular.identity,
            headers: {'Content-Type': undefined}
        }
        return $http.post('data/ajax/conductor/setConductor.php', conductor, config);
	};
	this.getConductorByIdPersona = function(idpersona){
        var url_    = 'data/ajax/conductor/getConductorByIdPersona.php';
        var params_ = {'idpersona': idpersona} ;
        return $http.get(url_, {'params': params_});
	};
    /*this.updUsuario = function(usuario){
        var url_    = 'data/ajax/usuario/updUsuario.php';
        var params_ = usuario ;

        return $http.put(url_, params_) ;
    };*/
});