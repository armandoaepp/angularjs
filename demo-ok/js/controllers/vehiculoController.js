'use strict';

app.controller('CtrlVehiculoList', function($rootScope, $scope, vehiculoService) {
    $rootScope.showTemplate = true;
    $scope.vehiculos = [];

    getVehiculo() ;

    function getVehiculo(){
        vehiculoService.getVehiculo().then(
            function(response){
                if ( !response.data.error ) {
                    $scope.vehiculos = response.data.data;                    
                }
            }
        );
    };
});

app.controller('CtrlVehiculoNew',function($rootScope, $scope, vehiculoService, $location){
    $rootScope.showTemplate = true;
    $scope.tipovehiculo = [];

    $scope.setVehiculo = function () {
        var data = {
            'idtipovehiculo': $scope.tipo.idtipovehiculo,
            'placa'         : $scope.placa,
            'modelo'        : $scope.modelo,
            'observacion'   : $scope.observacion,
            'color'         : $scope.color,
            'marca'         : $scope.marca,
            'consumo'       : $scope.consumo
        };

        vehiculoService.setVehiculo(data).then(            
            function(response){                
                if ( response.data.error ) {
                    $scope.msjVehiculo = response.data.msg;
                }
                else{
                    $location.path('/vehiculo/listar');
                }
            }
        );
    };

    function getTipoVehiculo(){
        vehiculoService.getTipoVehiculo().then(
            function(response){
                $scope.tipovehiculo = response.data.data ;
            }
        );
    };
    getTipoVehiculo();
});

app.controller('CtrlVehiculoEdit',function($rootScope, $scope, vehiculoService, $routeParams, $location){
    $rootScope.showTemplate = true;
    $scope.tipovehiculo = [];
    $scope.selectedtipo = {};

    getTipoVehiculo();    

    function getTipoVehiculo(){
        vehiculoService.getTipoVehiculo().then(
            function(response){
                $scope.tipovehiculo = response.data.data;
                getVehiculoByIdVehiculo();
            }
        );
    };

    function getVehiculoByIdVehiculo(){
        var idvehiculo = $routeParams.idvehiculo ;

        vehiculoService.getVehiculoByIdVehiculo(idvehiculo).then(
            function(response){
                if ( !response.data.error ) {
                    var vehiculo = response.data.data[0];

                    $scope.idvehiculo               = vehiculo.idvehiculo;
                    $scope.placa                    = vehiculo.placa;
                    $scope.color                    = vehiculo.color;
                    $scope.modelo                   = vehiculo.modelo;
                    $scope.observacion              = vehiculo.observacion;
                    $scope.marca                    = vehiculo.marca;
                    $scope.consumo                  = vehiculo.consumo;

                    for (var i = $scope.tipovehiculo.length - 1; i >= 0; i--) {
                        if ($scope.tipovehiculo[i].idtipovehiculo == vehiculo.idtipovehiculo) {
                            $scope.selectedtipo = $scope.tipovehiculo[i];
                        };                        
                    };
                }
            }
        );
    };

    $scope.updVehiculo = function(){
        var data = {
            'idvehiculo'    : $scope.idvehiculo,
            'idtipovehiculo': $scope.selectedtipo.idtipovehiculo,
            'placa'         : $scope.placa,
            'modelo'        : $scope.modelo,
            'observacion'   : $scope.observacion,
            'color'         : $scope.color,
            'marca'         : $scope.marca,
            'consumo'       : $scope.consumo
        };

        vehiculoService.updVehiculo(data).then(
            function(response){
                if ( response.data.error ) {
                    $scope.msjVehiculo = response.data.msg;
                }
                else{
                    $location.path('/vehiculo/listar');
                }
            }
        );
    }

});

