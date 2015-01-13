'use strict';

var app = angular.module('appInicio', ['ngRoute']);

app.config(['$routeProvider', function($ruta) {
	$ruta.when('/login', {
		templateUrl: 'partials/logeo/login.html',
		controller: 'LoginController'
	});
	$ruta.when('/registrar', {
		templateUrl: 'partials/cliente/registrar.html',
		controller: 'clienteController'
	});
	$ruta.otherwise({
		redirectTo: '/login'
	});
}]);

/*// $rootScope a diferencia de $scope, puede ser accedido desde cualquier controllador.
// Al poner funciones o datos en el app.run función, vamos a garantizar
// que se ejecutaran antes de que el resto de la aplicación
app.run(['$rootScope', '$location', 'accesoService', function($rootScope, $location, accesoService){
	// rutas a las cuales no podra acceder si no se ha logeado
	var rutasPermitidas = ['/home'] ;
	// $on es un desencadenador de eventos
	// $routeChangeStart es un evento que se dispara cuando se canbia la ruta (url)
	$rootScope.$on('$routeChangeStart', function(event, oldUrl, newUrl){
		if ( rutasPermitidas.indexOf($location.path()) != -1  ) {
			accesoService.isLogin().then(
				function(response){
					if (response.data === '') {
						$location.path('/login');
					};
				}
			);
		};
	});
}]);*/