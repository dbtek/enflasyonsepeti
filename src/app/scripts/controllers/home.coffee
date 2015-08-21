angular = require 'angular'

angular.module 'enflasyonSepeti.ctrl.home', [
    require '../data'
  ]
  .controller 'HomeCtrl', ($scope, data) ->
    $scope.categories = data
    $scope.filters =
      name: ''

module.exports = 'enflasyonSepeti.ctrl.home'
