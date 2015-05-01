angular.module('appAdmin')
.config(['$stateProvider', '$urlRouterProvider',
    function ($stateProvider,   $urlRouterProvider) {
            // Use $urlRouterProvider to configure any redirects (when) and invalid urls (otherwise).
            $urlRouterProvider.
                otherwise('/login');

            $stateProvider
                .state('login',{
                    url: '/login',
                    templateUrl: 'views/login/login.tpl.html',
                    controller: 'loginCtrl',
                    controllerAs: 'vm'

                })
                .state('home',{
                    url: '/home',
                    template: '<p class="lead">Welcome to the UI-Router Demo</p>' +
                    '<p>Use the menu above to navigate. ' +
                    'Pay attention to the <code>$state</code> and <code>$stateParams</code> values below.</p>' +
                    '<p>Click these links—<a href="#/c?id=1">Alice</a> or ' +
                    '<a href="#/user/42">Bob</a>—to see a url redirect in action.</p>'
                    // templateUrl: 'partials/home/home.html',
                    // controller: 'LoginCtrl'
                })
                .state('transportista',{
                    url: '/transportista',
                    templateUrl: 'views/transportista/indexTransportista.tpl.html',
                    controller: 'transportistaCtrl',
                    controllerAs: 'vm'

                })
                    .state('activos',{
                        parent: 'transportista',
                        url: '/activos',
                        templateUrl: 'views/transportista/activos/activosTransportista.html',
                        controller: 'transportistaEstadoCtrl as vm',
                        // controllerAs: 'vm'
                    })
                        .state('detalle',{
                            parent: 'activos',
                            url: '/detalle/:idtransportista',
                            templateUrl: 'views/transportista/activos/detalleTransportista.html',
                            controller: 'transportistaDetalleCtrl as vm',
                            // controllerAs: 'vm'

                        })
                    .state('inactivos',{
                        parent: 'transportista',
                        url: '/inactivos',
                        templateUrl: 'views/transportista/saldo/listTransportista.html',
                        controller: 'transportistaEstadoCtrl',
                        controllerAs: 'vm'

                    })

                .state('saldo',{
                    parent: 'transportista',
                    url: '/saldo',
                    templateUrl: 'views/transportista/saldo/listTransportista.html',
                    controller: 'transportistaSaldoCtrl'
                })

                .state('mas',{
                    parent: 'transportista',
                    url: '/mas',
                    templateUrl: 'views/transportista/saldo/listTransportista.html',
                    controller: 'transportistaCtrl'
                })

                .state('transportista1',{
                    url: '/transportista1',
                    templateUrl: 'views/transportista/indexTransportista.tpl.html',
                    // controller: 'transportistaCtrl'
                })
                .state('saldo1',{
                    parent: 'transportista1',
                    url: '/saldo1',
                    templateUrl: 'views/transportista/saldo/listTransportista.html',
                    controller: 'transportistaCtrl'
                })


                .state('reporte',{
                    url: '/reporte',
                    template: '<p class="lead">Welcome to the UI-Router Demo</p>' +
                    '<p>Use the menu above to navigate. ' +
                    'Pay attention to the <code>$state</code> and <code>$stateParams</code> values below.</p>' +
                    '<p>Click these links—<a href="#/c?id=1">Alice</a> or ' +
                    '<a href="#/user/42">Bob</a>—to see a url redirect in action.</p>                     Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere, accusamus. Unde velit blanditiis libero, ea, vero quidem quod alias soluta ipsam consectetur fuga rem rerum, cupiditate assumenda quis quas natus!'
                    // templateUrl: 'partials/home/home.html',
                    // controller: 'LoginCtrl'
                })
                .state('cuentas',{
                    url: '/cuentas',
                    template: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum incidunt, recusandae aspernatur sit! Perspiciatis fugiat, molestiae iste voluptas, distinctio deserunt assumenda odit quaerat beatae, cum asperiores quisquam sit nemo sapiente. '
                    // templateUrl: 'partials/home/home.html',
                    // controller: 'LoginCtrl'
                })

        }
    ]);
