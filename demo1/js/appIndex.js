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

	$ruta.when('/persona/editar/:idpersona', {
		templateUrl: 'partials/persona/editar_persona.html',
		controller: 'CtrlPersonaUpdate'
	});

	$ruta.otherwise({
		redirectTo: '/'
	});
}]);