// create the module and name it survivorsUnited
APP = angular.module('APP', ['ngRoute', 'ui.bootstrap'])
    .directive('xmlRender', [function(scope, element, attributes) {
        return function(scope, element, attributes) {

            var xml_module = {
                "content": element,
                // TODO: REPLACE THIS WITH SOMETHING MORE SOLID
                rand_id: Math.random().toString(36).substring(7),
                init: function() {
                    this.render();
                },
                render: function() {

                    var parameters = attributes.xslParams ? JSON.parse(attributes.xslParams) : [];


                    var routes = location.hash.split('/');

                    routes.shift();
                    _.each(routes, function(item, index) {
                        parameters.push({
                            name: "location_route_" + index,
                            value: item
                        });
                    });

                    var test = magicXML.transform(
                        attributes.xml,
                        attributes.xslt,
                        parameters
                    );

                    xml_module.content.append(test);
                }
            };

            xml_module.init();

            return {
                restrict: 'E'
            };
        };
    }]);