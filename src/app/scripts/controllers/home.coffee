angular = require 'angular'

angular.module 'enflasyonSepeti.ctrl.home', [
    require '../data'
  ]

  .controller 'ItemsCtrl', ($scope, $mdDialog, category, color) ->
    $scope.category = category
    $scope.color = color
    $scope.close = ->
      $mdDialog.cancel()

  .controller 'HomeCtrl', ($scope, data, $mdDialog) ->
    console.log(data);
    $scope.categories = data
    $scope.filters =
      name: ''

    $scope.$on 'searchTermInput', (e, term) ->
      if term?
        $scope.selectedTab = 1
        $scope.filters.name = term

    $scope.showItems = (index, ev) ->
      $mdDialog.show
        controller: 'ItemsCtrl'
        templateUrl: 'app/views/items.html'
        resolve:
          category: -> data[index]
          color: -> $scope.colors[index%8]
        parent: (angular.element document.body)
        targetEvent: ev
        clickOutsideToClose: true

    $scope.colors = ['teal', 'blue', 'pink', 'orange', 'purple', 'lime', 'light-blue']

module.exports = 'enflasyonSepeti.ctrl.home'
