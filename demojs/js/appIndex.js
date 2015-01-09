'use strict';

var app = angular.module('appIndex', ['ngRoute']);

app.config(['$routeProvider', function($ruta) {
	$ruta.when('/persona', {
		templateUrl: 'partials/persona/personaList.html',
		controller: 'CtrlPersonaList'
	});
	$ruta.when('/persona/nuevo', {
		templateUrl: 'partials/persona/nuevo_persona.html',
		controller: 'CtrlPersonaNuevo'
	});

	/*$ruta.otherwise({
		redirectTo: '/'
	});*/
}]);