'use strict';

app.controller('CtrlPlataformaMenu', function($rootScope, $scope, accesoService){
	$rootScope.showMenu = false;
    function menu(){
		accesoService.isLogin().then(
            function(response) {            	
				var id = response.data ;
				if (id !== '') {
					accesoService.menu(id).then(
						function(response){
							if ( !response.data.error ) {
								$scope.menus = response.data.data;
							}
						}
					);
				}
				else{
					location.href='index.html';
				}
            }
		);
    };
    menu();

    $scope.showAside = function(){
    	$rootScope.viewAside = !$rootScope.viewAside;
    }
    $scope.logout = function(){
    	accesoService.logout();
    }
});

app.controller('CtrlPlataformaAside', function($rootScope, $scope, accesoService){	
    function aside(){
		accesoService.isLogin().then(
            function(response) {
				var id = response.data ;
				if (id !== '') {
					accesoService.aside(id).then(
						function(response){
							if (!response.data.error) {
								$scope.asides = response.data.data;
							}
						}
					);
				}
            }
		);
    };
    aside();
});