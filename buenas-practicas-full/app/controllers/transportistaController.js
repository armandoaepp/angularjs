(function(){
    // angular.module('transportista.controller', ['transportista.service','ui.bootstrap', 'cuenta.service']);

    // transportistaCrtl
        function transportistaCrtl(transportistaService)
        {
            var vm = this ;

            vm.tr_activos  = 0 ;
            vm.tr_inactivos  = 0

            transportistaService.get_countTransp().then(
                function(response){
                    console.log(response) ;
                    if (!response.error) {
                        vm.tr_activos  =  response.data["tr_activos"];
                        vm.tr_inactivos  =  response.data["tr_inactivos"];
                    }
                }
            );
        }

        angular.module('transportista.controller').controller('transportistaCtrl',transportistaCrtl);
        transportistaCrtl.$inject =  ['transportistaService'] ;

    // transportistaEstadoCtrl
        function transportistaEstadoCtrl($rootScope,$filter,$location,transportistaService,cuentaService,$modal, $log)
        {
                // SCOPE
                var vm = this ;

                $rootScope.viewtransportista        = true ;
                $rootScope.viewtransportistaDetalle = false ;
                vm.data           = []; // el total de datos recuperados
                vm.transportistas = [];

                vm.txtsearch    = '';
                vm.maxSize      = 5;
                vm.currentPage  = 1;
                vm.itemsPerPage = 6;
                vm.totalItems   = 0;

                var paht      = $location.path() ;
                var estadoUrl = ($location.path()).split('/') ;

                var estado = -1 ;
                if (estadoUrl.length > 2)
                {
                    if (estadoUrl[2] === 'activos')
                    {
                        estado = 1 ;
                    };
                    if (estadoUrl[2] === 'inactivos')
                    {
                        estado = 0 ;
                    };

                };

                var data = {
                    'estado' : estado ,
                };

                listarTransportista() ;

                function listarTransportista(){
                     transportistaService.get_transportista_by_estado(data).then(
                        function(response){
                            if (!response.error) {

                            console.log(response);
                                vm.transportistas = response.data;
                                vm.data = response.data;
                                vm.totalItems  = vm.transportistas.length;
                                vm.currentPage = 1;
                                vm.numPerPage  = 10;
                                filtrado('');
                                paginado(1);
                            }
                        }
                    ) ;
                }

                vm.search = function(text){
                    console.log(text) ;
                    filtrado(text);
                    paginado(vm.currentPage);
                };

                vm.f_itemsPerPage = function(itemsPerPage){
                    filtrado(vm.txtsearch);
                    paginado(vm.currentPage);
                };

                vm.pageChanged = function() {
                    paginado(vm.currentPage);
                };

                function paginado(page){
                    var start   = (page - 1) * vm.itemsPerPage,
                        end     = parseInt(start) + parseInt(vm.itemsPerPage);
                    filtrado(vm.txtsearch);
                    vm.transportistas = vm.transportistas.slice(start, end);
                }

                function filtrado(text){
                    vm.transportistas = $filter('filter')(vm.data, text);
                    vm.totalItems     = vm.transportistas.length;
                }

                // detalle

                vm.detalleTr = function (id) {
                   vm.transportistaInfo = [] ;

                    $rootScope.viewtransportista = false ;
                    $rootScope.viewtransportistaDetalle = true ;

                    var idtransportista = (id).substring(4); ;
                           if (idtransportista > 0)
                            {
                                transportistaService.get_transportista_info_by_idtransp(idtransportista).then(
                                    function(response){
                                        // console.log(response) ;
                                        if (!response.error) {
                                           vm.transportistaInfo = response.data ;
                                           vm.saldoTr(idtransportista) ;
                                        }
                                    }
                                );
                            };
                };

                 vm.backPage = function (){
                    $rootScope.viewtransportista= true ;
                    $rootScope.viewtransportistaDetalle = false ;
                }

                // saldo
                vm.saldo = [] ;
                vm.saldoTr = function (idtransportista) {
                           if (idtransportista > 0)
                            {
                                var data = {
                                    'tipo' : 'TR' ,
                                    'idcliente' : idtransportista ,
                                };
                                cuentaService.get_cuenta_by_tipocli_idcli(data).then(
                                    function(response){
                                        console.log(response) ;
                                        if (!response.error) {
                                           vm.saldo = response.data ;
                                        }
                                    }
                                );
                            };
                };

                vm.modalUpdate = function (size, selectedData) {
                            console.log(selectedData);
                            // vm.datafrm = [] ;
                            var modalInstance = $modal.open({
                                templateUrl: 'views/transportista/saldo/editarSaldo.tpl.html',
                                controller: function ($scope, $modalInstance, saldo_) {
                                    $scope.saldo_ = saldo_;
                                    $scope.enviar = function (data) {
                                        // console.log(data) ;
                                        var rpta = vm.updateSaldo(data,$modalInstance) ;
                                    };
                                    $scope.cancel = function () {
                                        $modalInstance.dismiss('cancel');
                                    };
                                },
                                size: size,
                                resolve: {
                                        saldo_: function () {
                                          return selectedData;
                                        }
                                }
                            });

                };

                vm.updateSaldo = function (data, $modalInstance){
                    var datos = {
                        'idcuenta'  : data.idcuenta ,
                        'monto': data.nuevoSaldo,
                    };
                    if (data.nuevoSaldo > 0)
                    {
                        cuentaService.upd_cuenta_saldo_mas_monto(datos).then(
                            function(response){
                                if (!response.error)
                                {
                                    var idtransportista = data.idcli ;
                                    vm.saldoTr(idtransportista) ;
                                    $modalInstance.close();

                                }
                            }
                        );
                    };
                }

        }

        angular.module('transportista.controller').controller('transportistaEstadoCtrl',transportistaEstadoCtrl);
        transportistaEstadoCtrl.$inject = ['$rootScope','$filter','$location','transportistaService', 'cuentaService', '$modal', '$log'] ;


angular.module('transportista.controller').controller('ModalInstanceCtrl', function ($scope, $modalInstance, items) {

  $scope.items = items;
  $scope.selected = {
    item: $scope.items[0]
  };

  $scope.ok = function () {
    $modalInstance.close($scope.selected.item);
  };

  $scope.cancel = function () {
    $modalInstance.dismiss('cancel');
  };
});

})() ;
