APP.config(function($routeProvider) {

    _.each([
        '/',
        '/home',
        '/events',
        '/events/:year/:month',
        '/training',
        '/sypchallenge',
        '/styleguide'
    ], function(val) {
        $routeProvider
            .when(val, {
                templateUrl: '../views/home.html'
            });
    });

    $routeProvider
        .when('/notfound', {
            templateUrl: '../views/notfound.html'
                //controller: 'dashboardController'
        })
        .otherwise({
            redirectTo: '/notfound'
        });
});