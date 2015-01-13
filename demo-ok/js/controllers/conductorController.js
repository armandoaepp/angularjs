'use strict';

app.controller('CtrlConductorList', function($rootScope, $scope, conductorService) {
    $rootScope.showTemplate = true;
    $scope.conductores = [];

    getConductor() ;

    function getConductor(){
        conductorService.getConductor().then(
            function(response){                
                if ( !response.data.error ) {
                    $scope.conductores = response.data.data;                    
                }
            }
        );
    };
});

app.controller('CtrlConductorNew',function($rootScope, $scope, conductorService, $location){
    $rootScope.showTemplate = true;
    $scope.conductor = {
        'dni':'87654321',
        'brevete':'Q40723053',
        'nombre':'Anani Diahann',
        'apepat':'Ayala',
        'apemat':'Paz',
        'telefono':'123456789'
    }
    $scope.setConductor = function () {
        var formData = new FormData();
        formData.append('imgdni', $scope.imgdni[0]);
        formData.append('imgbrevete', $scope.imgbrevete[0]);
        formData.append('conductor',  angular.toJson($scope.conductor));

        conductorService.setConductor(formData).then(            
            function(response){
                if ( response.data.error ) {
                    $scope.msjConductor = response.data.msg;
                }
                else{
                    console.log(response.data);
                    $location.path('/usuario/listar');
                }
            }
        );
    };

});


app.controller('CtrlConductorEdit',function($rootScope, $scope, conductorService, $routeParams, $location){
    $rootScope.showTemplate = true;
    $scope.conductor = [];

    getConductorByIdPersona();  

    function getConductorByIdPersona(){
        var idpersona = $routeParams.idpersona ;

        conductorService.getConductorByIdPersona(idpersona).then(
            function(response){    
                /*console.log(response.data);*/
                if ( !response.data.error ) {
                   $scope.conductor = response.data.data;
                }
            }
        );
    };

    /*$scope.updUsuario = function () {
        conductorService.updUsuario($scope.conductor).then(
            function(response){
                console.log(response.data);                
                if ( response.data.error ) {
                    $scope.msjUsuario = response.data.msg;
                }
                else{
                    $location.path('/usuario/listar');
                }
            }
        );
    };*/

});