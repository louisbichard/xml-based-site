APP.directive('xmlRender', function($rootScope) {
    return {
        restrict: 'EA',
        scope: {
            xml: '=',
            xslt: '='
        },
        link: function(scope, element, attributes, $window) {

            var xml_module = {
                "content": element,
                init: function() {
                    this.render();
                },
                render: function() {

                    // SET UP CORE PARAMETERS, AND PASS THE MONTH BY DEFAULT
                    var parameters = [{
                        name: "current_month",
                        value: moment().format('MMM')
                    },
                    {
                        name: "current_year",
                        value: moment().format('YYYY')
                    }];

                    var routes = location.hash.split('/');

                    routes.shift();

                    _.each(routes, function(item, index) {
                        parameters.push({
                            name: "location_route_" + index,
                            value: item
                        });
                    });

                    var template = magicXML.transform(
                        scope.xml,
                        scope.xslt,
                        parameters
                    );

                    xml_module.content.html("");
                    xml_module.content.append(template);
                }
            };

            $rootScope.$on('$routeChangeSuccess', function(next, current) {
                xml_module.init();
            });
            xml_module.init();

        }
    };

});