'use strict';

app.service('sunatService', function($http){

    this.getInformacionByRuc = function(ruc){
        var url_    = 'data/ajax/helper/getInfoByRuc.php' ;
        var params_ = {'ruc': ruc} ;

        return $http.get(url_, {'params': params_}) ;
    };

});