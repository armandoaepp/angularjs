(function(){
    angular
        .module('perUsuario.service')
        .service('perUsuarioService', perUsuarioService);

        perUsuarioService.$inject = ['$http'];

    function perUsuarioService($http){

        this.get_perusuario_by_usuario_password = get_perusuario_by_usuario_password ;

        // this.get_perusuario_by_usuario_password = function(params_){
        function get_perusuario_by_usuario_password(params_){
            var url_ = 'data/public/cuenta/IndexPerUsuario.php';
            params_.accion = 'login' ;
            return postHttp(url_, params_);
        };

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