angular = require 'angular'

angular.module 'enflasyonSepeti.ctrl.search', []
  .controller 'SearchCtrl', ($scope) ->
    $scope.$watch 'term', ->
      console.log $scope.term

module.exports = 'enflasyonSepeti.ctrl.search'
