APP.config(function($routeProvider) {

    _.each([
        '/',
        '/home',
        '/events',
        '/events/:year/:month',
        '/training',
        '/sypchallenge',
        '/styleguide',
        '/committee',
        '/links',
        '/gallery',
        '/gallery/:month/:year/:location',
        '/gallery/:month/:year',
        '/gallery/:month'
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