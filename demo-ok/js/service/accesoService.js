'use strinct';

app.service('accesoService', function($http, $location){
	this.login = function(data){
        return $http.post('data/ajax/acceso/login.php', data);
	};

	this.logout = function(){
        $http.get('data/ajax/acceso/logout.php').then(
            function(response){
                location.href='index.html';
            }
        );
	};

	this.isLogin = function(){
		return $http.get('data/ajax/acceso/isLogin.php');
	};

    this.menu = function(id){
        var url_    = 'data/ajax/acceso/menu.php' ;
        var params_ = {'id': id} ;

        return $http.get(url_, {'params': params_}) ;
    };

    this.aside = function(id){
        var url_    = 'data/ajax/acceso/aside.php' ;
        var params_ = {'id': id} ;

        return $http.get(url_, {'params': params_}) ;
    };
});