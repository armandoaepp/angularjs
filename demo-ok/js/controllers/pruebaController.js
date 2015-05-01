'use strict';

app.controller('CtrlPruebaList', function($rootScope, $scope, pruebaService) {
    $rootScope.showTemplate = true;
    $scope.pruebas = [];

    getPruebas() ;

    function getPruebas(){

                   var params_ = {
                        'accion' : 'list',
                   } ;

        pruebaService.getPruebas(params_).then(
            function(response){
                    console.log(response);
                if ( !response.data.error ) {
                    $scope.pruebas = response.data.data;
                }
            }
        );
    };
});

app.controller('CtrlPruebaNew',function($rootScope, $scope, pruebaService, $location){
    $rootScope.showTemplate = true;

    $scope.setPrueba = function () {

        var data = {
            'Nombres'    : $scope.Nombres,
            'Apellidos'  : $scope.Apellidos,
            'accion'     : 'set' ,
        };

        pruebaService.setPrueba(data).then(
            function(response){
                // console.log(response) ;
                if ( response.data.error ) {
                    $scope.msj = response.data.msg;
                }
                else{
                    $location.path('/prueba/listar');
                }
            }
        );
    };

});

app.controller('CtrlPruebaEdit',function($rootScope, $scope, pruebaService, $routeParams, $location){
    $rootScope.showTemplate = true;

    $scope.prueba = [];

    getPruebaById();

    function getPruebaById(){
        var idprueba = $routeParams.idprueba ;

         var params_ = {
                        'accion' : 'getid',
                        'id'     : idprueba,
                   } ;

        pruebaService.getPruebaById(params_).then(
            function(response){
                 // console.log(response);
                if ( !response.data.error ) {

                    // var prueba = response.data.data[0];
                    $scope.prueba = response.data.data[0] ;
                    console.log(response.data.data[0] );

/*                    $scope.id        = prueba.id;
                    $scope.Nombres   = prueba.Nombres;
                    $scope.Apellidos = prueba.Apellidos;*/
                }
            }
        );
    };

    $scope.updPrueba = function(){

         var data = {
            'id'         : $scope.id,
            'Nombres'    : $scope.Nombres,
            'Apellidos'  : $scope.Apellidos,
            'accion'     : 'update' ,
        };
        console.log(data) ;

        pruebaService.updatePrueba(data).then(
            function(response){
                console.log(response);
                if ( response.data.error ) {
                    $scope.msj = response.data.msg;
                }
                else{
                    $location.path('/prueba/listar');
                }
            }
        );
    }

});

