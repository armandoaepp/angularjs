'use strict';

app.service('clienteService', function($http){

	this.set = function(data){
        return $http.post('data/ajax/cliente/setCliente.php', data);
	};

});