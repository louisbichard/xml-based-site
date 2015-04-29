APP.directive('xmlRender', [function(scope, element, attributes) {
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

                var template = magicXML.transform(
                    attributes.xml,
                    attributes.xslt,
                    parameters
                );

                xml_module.content.append(template);
            }
        };

        xml_module.init();

        return {
            restrict: 'E'
        };
    };
}]);