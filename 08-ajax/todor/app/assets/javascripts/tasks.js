var taskApp = {
  renderTasks: function () {
    for (var i = 0; i < this.tasks.length; i++) {
      var task = this.tasks[i];
      var $li = $('<li/>').text(task.title);
      $li.appendTo('#tasks');
    }
  }
};

$(document).ready(function () {

  $.getJSON('/tasks').done(function (result) {
    taskApp.tasks = result;
    taskApp.renderTasks();
  });

});