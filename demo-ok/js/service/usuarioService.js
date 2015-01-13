'use strict';

app.service('usuarioService', function($http){

	this.getUsuario = function(){
        return $http.get('data/ajax/usuario/getUsuario.php');
	};
	this.setUsuario = function(usuario){
        return $http.post('data/ajax/usuario/setUsuario.php', usuario);
	};
	this.getUsuarioByIdPersona = function(idpersona){
        var url_    = 'data/ajax/usuario/getUsuarioByIdPersona.php';
        var params_ = {'idpersona': idpersona} ;
        return $http.get(url_, {'params': params_});
	};
    this.updUsuario = function(usuario){
        var url_    = 'data/ajax/usuario/updUsuario.php';
        var params_ = usuario ;

        return $http.put(url_, params_) ;
    };
});