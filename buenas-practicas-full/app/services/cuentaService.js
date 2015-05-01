(function(){
    angular
        .module('cuenta.service')
        .service('cuentaService', cuentaService);

        cuentaService.$inject = ['$http'];

    function cuentaService($http){

        this.get_cuenta_by_tipocli_idcli = function(params_){
            var url_ = 'data/public/cuenta/IndexCuenta.php';
            params_.accion = 'get_cuenta_idcli' ;
            return postHttp(url_, params_);
        };


        this.upd_cuenta_saldo_mas_monto = function(params_){
             var url_ = 'data/public/cuenta/IndexCuenta.php';
            params_.accion = 'upd_add_saldo' ;
            return postHttp(url_, params_);
        };
         /*
        this.get_transportista_info_by_idtransp = function(params_){
            var url_ = 'data/public/cuenta/IndexTransportista.php';
            var params_ = {'params': {'accion':'getid_info','idtransp':params_}};
            return getHttp(url_, params_) ;
        };*/


        // peticion
        function getHttp (url_, params_ ){
            return $http.get(url_, params_)
                    .then(getServiceComplete)
                    .catch(getServiceFailed) ;
        }

        function postHttp (url_, params_ ){
            return $http.post(url_, params_)
                    .then(getServiceComplete)
                    .catch(getServiceFailed) ;
        }

        function getServiceComplete(response){
            return response.data ;
        }

        function getServiceFailed(error ){
            console.log('timeService.getPostsFaild: '+error) ;
        }
    }
})();