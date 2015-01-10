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
    $scope.persona = [];

    getPersonaByIdPersona();

    function getPersonaByIdPersona(){
        var idpersona = $routeParams.idpersona ;

        personaService.getPersonaByIdPersona(idpersona).then(
            function(response){
                console.log(response.data);
                if ( !response.data.error ) {

                    var persona = response.data.data[0];

                    $scope.idpersona  = persona.idpersona;
                    $scope.nombre     = persona.nombre;
                    $scope.nacimiento = persona.nacimiento;
                    $scope.tipo       = persona.tipo;
                }
            }
        );
    };

    $scope.updPersona = function ()
    {
        var data = {
            'idpersona' :   $scope.idpersona,
            'nombre'    :   $scope.nombre,
            'nacimiento':   $scope.nacimiento,
            'tipo'      :   $scope.tipo,
        };

        personaService.updPersona(data).then(
            function(response){
                console.log(response) ;
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

