var TodoCtrl, app;

app = angular.module("todo", []);

TodoCtrl = function($scope) {
  $scope.tasks = [];
  $scope.title = "new task";
  $scope.on_taskClick = function(task) {
    return task.complete = !task.complete;
  };
  return $scope.createTask = function(title) {
    var task;
    task = {
      title: title,
      completed: false
    };
    return $scope.tasks.push(task);
  };
};
