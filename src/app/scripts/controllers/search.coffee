angular = require 'angular'

angular.module 'enflasyonSepeti.ctrl.search', []
  .controller 'SearchCtrl', ($scope, $rootScope) ->
    $scope.$watch 'term', ->
      $rootScope.$broadcast 'searchTermInput', $scope.term
module.exports = 'enflasyonSepeti.ctrl.search'
