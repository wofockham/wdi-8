var taskApp = {

  toggleCompleted: function (event) {
    var $li = $(this).parent();
    var id = $li.data('task-id');
    $.ajax('/tasks/' + id + '/completed', {
      type: 'POST'
    }).error(function () {
      alert('Something fucked up');
    });
  },

  deleteTask: function (event) {
    var $li = $(this).parent();
    var id = $li.data('task-id');
    $.ajax('/tasks/' + id, {
      type: 'POST',
      data: {
        _method: 'DELETE'
      }
    }).done(function () {
      $li.remove();
    });
  },

  loadTasks: function () {
    $.getJSON('/tasks').done(function (tasks) {
      taskApp.tasks = tasks;
      taskApp.renderTasks();
    });
  },

  renderTasks: function () {
    $('#tasks').empty();
    for (var i = 0; i < this.tasks.length; i++) {
      var task = this.tasks[i];
      var li = this.taskHTML(task);
      $('#tasks').append(li);
    }
  }
};

$(document).ready(function () {
  taskApp.taskHTML = Handlebars.compile($('#taskTemplate').html());

  taskApp.loadTasks();

  // $('#new_task').on('submit', taskApp.createTask);

  // Requires event delegation because tasks are added to the page dynamically.
  $('#tasks').on('click', '.delete', taskApp.deleteTask);
  $('#tasks').on('click', ':checkbox', taskApp.toggleCompleted);

  // https://github.com/rails/jquery-ujs/wiki/ajax
  $('#new_task').on('ajax:success', taskApp.loadTasks);
});

