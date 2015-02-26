var taskApp = {
  // Hits /tasks/:id/completed on the server to toggle the "completed" status.
  toggleCompleted: function (event) {
    var $li = $(this).parent();
    var id = $li.data('task-id');
    $.ajax('/tasks/' + id + '/completed', {
      type: 'POST'
    }).error(function () {
      alert('Something fucked up');
    });
  },

  // Sends a DELETE request to the server to delete a task by its ID.
  deleteTask: function (event) {
    var $li = $(this).parent();
    var id = $li.data('task-id');
    $.ajax('/tasks/' + id, {
      type: 'POST',
      data: {
        _method: 'DELETE' // Rails uses this to fake POST requests as DELETE requests.
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
      var li = this.taskHTML(task); // Now uses Handlebars templates, defined below.
      $('#tasks').append(li);
    }
  }
};

$(document).ready(function () {
  // Abort this code when we're not on the landing page.
  if ($('#landing').length === 0) {
    return;
  }

  taskApp.taskHTML = Handlebars.compile($('#taskTemplate').html());

  taskApp.loadTasks();

  // Requires event delegation because tasks are added to the page dynamically.
  $('#tasks').on('click', '.delete', taskApp.deleteTask);
  $('#tasks').on('click', ':checkbox', taskApp.toggleCompleted);

  // https://github.com/rails/jquery-ujs/wiki/ajax
  $('#new_task').on('ajax:success', taskApp.loadTasks);
});
