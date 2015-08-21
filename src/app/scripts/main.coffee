# required modules
angular = require 'angular'

angular.module 'enflasyonSepeti', [
  require 'angular-animate'
  require 'angular-route'
  require 'angular-material'
  require './controllers'
]

.config ($routeProvider) ->
  $routeProvider
    .when '/',
      controller: 'HomeCtrl'
      templateUrl: 'app/views/home.html'
    .otherwise redirectTo: '/'
  return

# angular material config
.config ($mdThemingProvider) ->
  $mdThemingProvider.theme 'default'
    .primaryPalette 'indigo'
    .accentPalette 'pink'
  return

# bootstrap angular app
(angular.element document).ready ->
  angular.bootstrap document, ['enflasyonSepeti']
  return
