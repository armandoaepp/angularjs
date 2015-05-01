var appHttp =(function(window, undefined){

       var getHttp = function($http, url_ , params_){
            // console.log($http) ;
            return $http.get(url_, params_)
                    .then(getServiceComplete)
                    .catch(getServiceFailed) ;
        }

        // this.postHttp = function(url_, params_ ){
        function postHttp($http, url_ , params_){
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

        return {
            getHttp: getHttp,
            postHttp : postHttp
          }
})(window);