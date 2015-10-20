/**
* ----------------------------------------
*  AUTH CONTROLLER
* ----------------------------------------
**/

(function(){

	this.app.controller('AuthController', ['$scope', '$log', '$http', '$window',
	 function($scope, $log, $http, $window){
/**
* ----------------------------------------
*  SCOPE DEFINITION
* ----------------------------------------
**/
		$scope.user = {};
		/* SEND A POST TO END-POINT */
		$scope.signup = function(){
			/* TO-DO ADD FRONT VALIDATIONS */
			try{
				$http.post('/auth/signup', { 
					firstName: $scope.user.firstName,
					lastName: $scope.user.lastName,
					address: $scope.user.address,
					age: $scope.user.age,
					email: $scope.user.email,
					password: $scope.user.password,
					passwordConfirm: $scope.user.passwordConfirm
				})
				.success(function(data){
					if (data === 'ok') {
						/* TO-DO ADD NOTIFICATION SERVICES */
						alert('usuario registrado');
						$window.location.href = '/';
					};
				})
				.error(function(error){
					$log.error('error: ' + error);
				});			
			}catch(e){
				$log.error('erorr: ', e.message);
			};
		};

		$scope.signin = function() {
			debugger;
			$log.info($scope.user);
			// alert('tranquilidad aun no se desarrolla el manejo de sesiones');
			/* TO-DO ADD FRONT VALIDATIONS */
			try{
				$http.post('/auth/signin', { 
					email: $scope.user.email,
					password: $scope.user.password
				})
				.success(function(data){
					debugger;
					if (data === 'ok') {
						/* TO-DO ADD NOTIFICATION SERVICES */
						$log.info(data);
						alert('usuario registrado');
						$window.location.href = '/';
					};
				})
				.error(function(error){
					$log.error('error: ' + error);
				});			
			}catch(e){
				$log.error('erorr: ', e.message);
			};



		};


		$scope.ages = (function(){
			var age = [];
			for (var i = 15; i < 100; i++) {
				age.push({ age: i });
			};
			return age;
		})();


	}]);
}).call(this);