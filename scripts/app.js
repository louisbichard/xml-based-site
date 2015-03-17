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
                    var test = magicXML.transform(attributes.xml, attributes.xslt, undefined); // undefined is the parameters
                    xml_module.content.append(test);
                }
            };


            xml_module.init();

            return {
                restrict: 'E'
            };
        };
    }]);