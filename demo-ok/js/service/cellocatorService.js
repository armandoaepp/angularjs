'use strict';

app.service('cellocatorService', function($http){

	this.get_rpt_ExtInputF = function(accion){
		var url_    = 'data/ajax/cellocator/indexCellocator.php';
        var params_ = {'accion': accion} ;
        return $http.get(url_, {'params': params_});

        // return $http.get('data/ajax/cellocator/getTipoCellocator.php');
	};
	this.setCellocator = function(cellocator){
        return $http.post('data/ajax/cellocator/setCellocator.php', cellocator);
	};
	this.getCellocator = function(){
        return $http.get('data/ajax/cellocator/getCellocator.php');
	};
	this.getCellocatorByIdCellocator = function(cellocator){
        var url_    = 'data/ajax/cellocator/getCellocatorByIdCellocator.php';
        var params_ = {'idCellocator': idCellocator} ;
        return $http.get(url_, {'params': params_});
	};
	this.updCellocator = function(cellocator){
        return $http.put('data/ajax/cellocator/updCellocator.php', cellocator) ;
	}

});