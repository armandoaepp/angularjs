(function(){
    angular
    .module('ajax.service',[])
    .service('ajaxService', ajaxService);

    ajaxService.$inject = [ '$http'];

    function ajaxService($http){

        this.getHttp = getHttp ;
        this.postHttp= postHttp ;

       function getHttp(url_, params_ ){
            console.log(url_) ;
            return $http.get(url_, params_)
                    .then(getServiceComplete)
                    .catch(getServiceFailed) ;
        }

        function postHttp(url_, params_ ){
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