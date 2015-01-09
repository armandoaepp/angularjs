'use strict';
app.directive('loginDirective', function(){
	return{
		templateUrl:'partials/tpl/login.tpl.html'
	}
});
app.directive('homeDirective', function(){
	return{
		templateUrl:'partials/tpl/home.tpl.html'
	}
});
app.directive('registrarDirective', function(){
	return{
		templateUrl:'partials/tpl/registrar.tpl.html'
	}
});
/*app.directive('loadingDirective', function(){
	return{
		restrict : 'EA',
		templateUrl:'partials/tpl/loading.tpl.html'
	}
});*/