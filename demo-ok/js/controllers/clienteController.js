'use strict';

app.controller('clienteController', function ($scope, clienteService, sunatService, $location) {
    $scope.idLoadingRuc = false;
    $scope.errorRegistrar = '';
    
    $scope.cliente = {
                        'empruc'            :'10460033280',
                        'emprazonsocial'    :'CATMEDIA SAC',
                        'emptelefono'       :'061-574814',
                        'empfax'            :'061-574841',
                        'empdireccion'      :'Los naranjos # 239 - Brisas',
                        'ctonombres'        :'Jose Luis',
                        'ctoapepat'         :'Damián',
                        'ctoapemat'         :'Saavedra',
                        'ctomobil'          :'992703459',
                        'ctocorreo'         :'jlds161089@gmail.com'
                    }

    $scope.setCliente = function(data){
        /*$scope.isLoading = true ;*/
        clienteService.set(data).then(
            function(response){
                if ( response.data.error ) {
                    $scope.errorRegistrar = response.data.msg ;
                    /*$scope.isLoading = false ;*/
                }
                else{
                    $location.path('/login') ;
                }
            }
        );
    };

    $scope.getInformacionByRuc = function(){
        $scope.idLoadingRuc = true;
        sunatService.getInformacionByRuc($scope.cliente.empruc).then(
            function(response){
                if (response.data.codigo == 200) {
                    $scope.cliente.emprazonsocial = response.data.razonsocial;
                    $scope.idLoadingRuc = false;
                }
                else{
                    $scope.cliente.emprazonsocial = '';
                }
            }
        );
    };

});