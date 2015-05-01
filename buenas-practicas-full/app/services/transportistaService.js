(function(){
    angular
        .module('transportista.service')
        .service('transportistaService', transportistaService);

    transportistaService.$inject = ['$http'];

    function transportistaService($http){

        this.get_countTransp = get_countTransp ;
        this.get_transportista_by_estado = get_transportista_by_estado;
        this.get_transportista_by_idtransp = get_transportista_by_idtransp;


        function get_countTransp(){
            var url_ = 'data/public/transportista/IndexTransportista.php';
            var params_ = {'params': {'accion': 'get_countTransp','estado':1}};
            return getHttp(url_, params_) ;
        };

        // this.get_transportista_by_estado = function(params_){
        function get_transportista_by_estado(params_){
            var url_ = 'data/public/transportista/IndexTransportista.php';
            params_.accion = 'listTransEstado' ;
            return postHttp(url_, params_);
        };

        // this.get_transportista_by_idtransp = function(params_){
        function get_transportista_by_idtransp(params_){
            var url_ = 'data/public/transportista/IndexTransportista.php';
            var params_ = {'params': {'accion':'getid','idtransp':params_}};
            return getHttp(url_, params_) ;
        };

        this.get_transportista_info_by_idtransp = function(params_){
            var url_ = 'data/public/transportista/IndexTransportista.php';
            var params_ = {'params': {'accion':'getid_info','idtransp':params_}};
            return getHttp(url_, params_) ;
        };

        // peticion http
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