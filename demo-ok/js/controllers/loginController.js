'use strict';

app.controller('LoginController', ['$scope','accesoService','$location', function ($scope, accesoService, $location) {
	$scope.user = {'usuario':'jlds161089@gmail.com','clave':'123+-*'};
    $scope.errorLogin = '';

    $scope.login = function(data){
        accesoService.login(data).then(
            function(response){
                if ( response.data.error === true || response.data.data.length === 0 ) {
                	$scope.errorLogin = response.data.msg ;
                }
                else if( response.data.error === false && response.data.data.length > 0 ){
                    location.href='plataforma.html';
                }
            }
        );
    };
}]);