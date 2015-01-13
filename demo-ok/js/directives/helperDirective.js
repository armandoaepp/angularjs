'use strict';
app.directive('fileUpload', ['$parse', function($parse){
	return {
		restrict: 'A',
		/*controller: function ($scope, $element, $attrs) {
			$scope.info = {'nombre':'jose luis'};
		},*/
		link: function(scope, element, attrs){
            var model = $parse(attrs.ngModel);
            var modelSetter = model.assign;

            element.bind('change', function(){
                scope.$apply(function(){
                    modelSetter(scope, element[0].files);
                });
            });

			/*element.bind("mouseenter", function() {
				helper.hi(); // es un servicio, que se agrega desde la directiva
				console.log(scope.info);
			});*/
		}
	};
}]);
