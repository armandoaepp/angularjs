'use strict';

app.controller('CtrlPersonaList', function($rootScope, $scope, personaService) {
    $rootScope.showTemplate = true;
    $scope.personas = [];

    getPersona() ;

    function getPersona(){
        personaService.getPersona().then(
            function(response){
                console.log(response);
                if ( !response.data.error ) {
                    $scope.personas = response.data.data;
                }
            }
        );
    };
});


app.controller('CtrlPersonaNuevo',function($rootScope, $scope, personaService, $location){
    $rootScope.showTemplate = true;
    $scope.persona = [];

    $scope.setPersona = function ()
    {
        var data = {
            'nombre'    :   $scope.nombre,
            'nacimiento':   $scope.nacimiento,
            'tipo'      :   $scope.tipo,
        };

        personaService.setPersona(data).then(
            function(response){
                // console.log(response) ;
                if ( response.data.error ) {
                    $scope.msj = response.data.msg;
                }
                else{
                    $location.path('/persona');
                }
            }
        );
    };

});


app.controller('CtrlPersonaUpdate',function($rootScope, $scope, personaService, $routeParams, $location){
    $rootScope.showTemplate = true;
    $scope.vehiculo = [];

    getVehiculoByIdVehiculo();


    function getVehiculoByIdVehiculo(){
        var idvehiculo = $routeParams.idpersona ;

        personaService.getVehiculoByIdVehiculo(idvehiculo).then(
            function(response){
                console.log(response.data);
                if ( !response.data.error ) {

                    var vehiculo = response.data.data[0];

                    $scope.idvehiculo               = vehiculo.idvehiculo;
                    $scope.placa                    = vehiculo.placa;
                    $scope.color                    = vehiculo.color;
                    $scope.modelo                   = vehiculo.modelo;
                    $scope.observacion              = vehiculo.observacion;
                    $scope.marca                    = vehiculo.marca;
                    $scope.consumo                  = vehiculo.consumo;
                    $scope.selected.idtipovehiculo  = vehiculo.idtipovehiculo;
                }
            }
        );
    };


});

