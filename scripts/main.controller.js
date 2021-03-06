APP.controller('mainController', function($scope, $routeParams, $location) {

    $scope = _.extend($scope, {
        current_paths: [],
        xml_details: {
            'Home': "xslt/home.xslt",
            'Events': "xslt/events.xslt",
            'Training': "xslt/training.xslt",
            'Sypchallenge': "xslt/sypchallenge.xslt",
            'Styleguide': "xslt/styleguide.xslt",
            'Committee': "xslt/committee.xslt",
            'Links': "xslt/links.xslt",
            'Gallery': "xslt/gallery.xslt"
        }
    });

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