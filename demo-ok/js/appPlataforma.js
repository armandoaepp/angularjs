'use strict';

var app = angular.module('appPlataforma', ['ngRoute', 'ngAnimate']);

app.config(['$routeProvider', function($ruta) {
	$ruta.when('/vehiculo/listar', {
		templateUrl: 'partials/vehiculo/listar.tpl.html',
		controller: 'CtrlVehiculoList'
	});
	$ruta.when('/vehiculo/nuevo', {
		templateUrl: 'partials/vehiculo/nuevo.tpl.html',
		controller: 'CtrlVehiculoNew'
	});
	$ruta.when('/vehiculo/editar/:idvehiculo', {
		templateUrl: 'partials/vehiculo/editar.tpl.html',
		controller: 'CtrlVehiculoEdit'
	});

	$ruta.when('/usuario/listar', {
		templateUrl: 'partials/usuario/listar.tpl.html',
		controller: 'CtrlUsuarioList'
	});
	$ruta.when('/usuario/nuevo', {
		templateUrl: 'partials/usuario/nuevo.tpl.html',
		controller: 'CtrlUsuarioNew'
	});
	$ruta.when('/usuario/editar/:idpersona', {
		templateUrl: 'partials/usuario/editar.tpl.html',
		controller: 'CtrlUsuarioEdit'
	});

	$ruta.when('/conductor/listar', {
		templateUrl: 'partials/conductor/listar.tpl.html',
		controller: 'CtrlConductorList'
	});
	$ruta.when('/conductor/nuevo', {
		templateUrl: 'partials/conductor/nuevo.tpl.html',
		controller: 'CtrlConductorNew'
	});
	$ruta.when('/conductor/editar/:idpersona', {
		templateUrl: 'partials/conductor/editar.tpl.html',
		controller: 'CtrlConductorEdit'
	});

	$ruta.when('/cellocator/rpt-extinputf', {
		templateUrl: 'partials/cellocator/rpt-extinputf.tpl.html',
		controller: 'CtrlCellocatorRptExtInputF'
	});

	$ruta.when('/prueba/listar', {
		templateUrl: 'partials/prueba/listar.tpl.html',
		controller: 'CtrlPruebaList'
	});
	$ruta.when('/prueba/nuevo', {
		templateUrl: 'partials/prueba/nuevo_prueba.tpl.html',
		controller: 'CtrlPruebaNew'
	});
	$ruta.when('/prueba/editar/:idprueba', {
		templateUrl: 'partials/prueba/editar_prueba.tpl.html',
		controller: 'CtrlPruebaEdit'
	});

	$ruta.otherwise({
		redirectTo: '/'
	});
}]);

// $rootScope a diferencia de $scope, puede ser accedido desde cualquier controllador.
// Al poner funciones o datos en el app.run función, vamos a garantizar
// que se ejecutaran antes de que el resto de la aplicación
app.run(['$rootScope', '$location', 'accesoService', function($rootScope, $location, accesoService){
	/*	accesoService.isLogin().then(
		function(response){
			if (response.data === '') {
				location.href='index.html';
			};
		}
	);*/

	// rutas a las cuales no podra acceder si no se ha logeado
	var rutasPermitidas = ['/home'] ;
	// $on es un desencadenador de eventos
	// $routeChangeStart es un evento que se dispara cuando se canbia la ruta (url)
	$rootScope.$on('$routeChangeStart', function(event, oldUrl, newUrl){
		if ( rutasPermitidas.indexOf($location.path()) != -1  ) {
			accesoService.isLogin().then(
				function(response){
					if (response.data === '') {
						location.href='index.html';
					};
				}
			);
		};
	});
}]);