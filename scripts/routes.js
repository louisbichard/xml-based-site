APP.config(function($routeProvider) {
    $routeProvider
        .when('/', {
            templateUrl: '../views/home.html'
        })

    .when('/home', {
        templateUrl: '../views/home.html'
    })

    .when('/events', {
        templateUrl: '../views/events.html'
            //controller: 'dashboardController'
    })

    .when('/notfound', {
        templateUrl: '../views/notfound.html'
            //controller: 'dashboardController'
    })

    /*.when('/notfound', {
        templateUrl: '../views/utilities/notfound.html'
    })*/

    .otherwise({
        redirectTo: '/notfound'
    });
});