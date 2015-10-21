(function(){
	this.app.config(['$stateProvider','$urlRouterProvider',
	 function($stateProvider, $urlRouterProvider) {
		$urlRouterProvider.otherwise('/');
		
		$stateProvider
		.state('landing', {
			url: '/',
			templateUrl: '/views/2partials/landing.html',
			controller: 'landingController'
		})
	}]);

}).call(this);

