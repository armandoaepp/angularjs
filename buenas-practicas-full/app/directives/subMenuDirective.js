'use strict';
var myApp = angular.module('subMenu.directive');

myApp.directive('subMenu', function(){
	return{
		restrict: 'AE',
		link: function(scope, element, attrs){
			element.bind('click', function(){
				var css    = ' ' + attrs.selectedItem;
				var padre = element.parent();
				var hermanos = padre.children();
				//  para generar los menus desplegables
				var sub_menu = hermanos[1] ;
				var target = angular.element(sub_menu).toggleClass('collapse');
			});
		}
	};
});

myApp.directive('autoActive', ['$location','$rootScope',function($location, $rootScope) {
	return function(scope, element, attrs) {

		var links = element.find('a'),
			currentLink,
			urlMap = {},
			activeClass = attrs.navMenu || 'active';

		for (var i = links.length - 1; i >= 0; i--) {
			var link = angular.element(links[i]);
			var url = link.attr('href');
			if (url.substring(0,1) === '#') {
				urlMap[url.substring(1)] = link;
			} else {
				urlMap[url] = link;
			}
		}
		scope.$on('$locationChangeSuccess', function() {

			var path = urlMap[$location.path()];
			if (path != undefined ) {

				links.parent('li').removeClass(activeClass);

				var element_inmediato = path[0].nextElementSibling ;

				if (path && element_inmediato === null) {
					path.parent('li').addClass(activeClass);
				}

				if (element_inmediato === null)
				{
					var padre = path.parent('li').parent('ul').removeClass('collapse');
				}
				// url :  /menu/submenu (elemento cero es null )
				var nivel_menu =  ($location.path()).split('/') ;

				$rootScope.submenu = false ;
				if (nivel_menu.length > 2)
				{
					var padre = path.parent('li').parent('ul').parent('ul');
					var elem = (padre[0].innerText.trim()).split(' ');

					$rootScope.submenu = true ;

					$rootScope.name_menu = elem[0] ;
					$rootScope.name_submenu = path[0].innerText ;

					$rootScope.class_menu = padre[0].children[0].children[0].className ;
					$rootScope.class_submenu = path[0].firstElementChild.className ;


				}else
				{
					$rootScope.name_menu = path[0].innerText ;
					$rootScope.class_menu = path[0].firstElementChild.className ;
				};
			}
		});
	};
}]);

