'use strict';

app.controller('CtrlUsuarioList', function($rootScope, $scope, usuarioService) {
    $rootScope.showTemplate = true;
    $scope.usuarios = [];

    getUsuario() ;

    function getUsuario(){
        usuarioService.getUsuario().then(
            function(response){                
                if ( !response.data.error ) {
                    $scope.usuarios = response.data.data;                    
                }
            }
        );
    };
});

app.controller('CtrlUsuarioNew',function($rootScope, $scope, usuarioService, $location){
    $rootScope.showTemplate = true;
    $scope.usuario = {
        'dni':'46003328', 
        'nombre':'Jose Luis',
        'apepat':'Damian',
        'apemat':'Saavedra',
        'correo':'jlds161089@gmail.com',
        'telefono':'992703459'
    }
    $scope.setUsuario = function () {
        usuarioService.setUsuario($scope.usuario).then(            
            function(response){                
                if ( response.data.error ) {
                    $scope.msjUsuario = response.data.msg;
                }
                else{
                    $location.path('/usuario/listar');
                }
            }
        );
    };
});

app.controller('CtrlUsuarioEdit',function($rootScope, $scope, usuarioService, $routeParams, $location){
    $rootScope.showTemplate = true;
    $scope.usuario = [];

    getUsuarioByIdPersona();  

    function getUsuarioByIdPersona(){
        var idpersona = $routeParams.idpersona ;

        usuarioService.getUsuarioByIdPersona(idpersona).then(
            function(response){                
                if ( !response.data.error ) {
                   $scope.usuario = response.data.data;
                }
            }
        );
    };

    $scope.updUsuario = function () {
        usuarioService.updUsuario($scope.usuario).then(
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
    };

});