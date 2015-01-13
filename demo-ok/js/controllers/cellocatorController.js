'use strict';

app.controller('CtrlCellocatorRptExtInputF', function($rootScope, $scope, cellocatorService) {
    $rootScope.showTemplate = true;
    $scope.cellocator = [];

    var accion = 'rpt-extinputf';

    get_rpt_ExtInputF() ;

    function get_rpt_ExtInputF(){
        cellocatorService.get_rpt_ExtInputF(accion).then(
            function(response){
                console.log(response) ;
                if ( !response.data.error ) {
                    $scope.cellocator = response.data.data;
                }
            }
        );
    };
});
/*
app.controller('CtrlVehiculoNew',function($rootScope, $scope, cellocatorService, $location){
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

        cellocatorService.setVehiculo(data).then(
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
        cellocatorService.getTipoVehiculo().then(
            function(response){
                $scope.tipovehiculo = response.data.data ;
            }
        );
    };
    getTipoVehiculo();
});

app.controller('CtrlVehiculoEdit',function($rootScope, $scope, cellocatorService, $routeParams, $location){
    $rootScope.showTemplate = true;
    $scope.tipovehiculo = [];
    $scope.selectedtipo = {};

    getTipoVehiculo();

    function getTipoVehiculo(){
        cellocatorService.getTipoVehiculo().then(
            function(response){
                $scope.tipovehiculo = response.data.data;
                getVehiculoByIdVehiculo();
            }
        );
    };

    function getVehiculoByIdVehiculo(){
        var idvehiculo = $routeParams.idvehiculo ;

        cellocatorService.getVehiculoByIdVehiculo(idvehiculo).then(
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

        cellocatorService.updVehiculo(data).then(
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

*/