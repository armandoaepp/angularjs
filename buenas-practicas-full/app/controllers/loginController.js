(function(){
    // angular.module('login.controller', ['perUsuario.service']);

        function loginCrtl(perUsuarioService)
        {
            var vm = this ;

            perUsuarioService.get_perusuario_by_usuario_password().then(
                function(response){
                    console.log(response) ;
                    console.log(response) ;
                    if (!response.error){
                    }
                }
            );
        }

        angular.module('login.controller').controller('loginCtrl',loginCrtl);
        loginCrtl.$inject =  ['perUsuarioService'] ;
})() ;
