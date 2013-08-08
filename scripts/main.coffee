app = angular.module("todo", [])

TodoCtrl = ($scope) ->
  
  $scope.tasks = []
  $scope.title = "new task"

  $scope.on_taskClick = (task) ->
    task.complete = not task.complete

  $scope.createTask = (title) ->
    task = 
      title: title
      completed: no
    $scope.tasks.push(task)


