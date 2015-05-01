angular.module('appAdmin', [
	'ui.router',
    'ui.bootstrap',
    'subMenu.directive',
    'transportista.controller',
]);
// directives
angular.module('subMenu.directive', []);

// controllers
angular.module('login.controller', ['perUsuario.service']);
angular.module('transportista.controller', ['transportista.service','ui.bootstrap', 'cuenta.service']);


// service
angular.module('ajax.service', [])
angular.module('perUsuario.service', [])
angular.module('transportista.service', []);
angular.module('cuenta.service', [])