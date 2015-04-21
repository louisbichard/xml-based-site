APP.controller('mainController', function($scope, $routeParams, $location) {

    $scope.current_paths = [];
    $scope.test_params = [{
        "name": "filterById",
        "value": "2"
    }];

    $scope.xml_details = {
        'Home': "data/home.xslt",
        'Events': "data/events.xslt",
        'Training': "data/training.xslt"
    };

    var main_module = {
        init: function() {
            this.watchRoute();
            this.setupScope();
        },
        setupScope: function() {
            $scope.url_parameters = $routeParams;
            $scope.current_paths = this.getPathsAsArray();
        },
        watchRoute: function() {
            $scope.$on('$routeChangeSuccess', function(next, current) {
                main_module.setupScope();
            });
        },
        capitalise: function(string) {
            return string.charAt(0).toUpperCase() + string.slice(1);
        },
        getPathsAsArray: function() {
            var paths = $location.path().split('/');
            paths.shift();

            return _.map(paths, function(path) {
                return main_module.capitalise(path);
            });
        }
    };

    main_module.init();

});