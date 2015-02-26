var taskApp = {
  createTask: function (event) {
    event.preventDefault();

    $.ajax('/tasks', {
      type: 'POST',
      dataType: 'json',
      data: {
        "task[title]": $('#task_title').val(),
        "task[description]": $('#task_description').val(),
        "task[completed]": $('#task_completed:checked').val()
      }
    }).done(function (tasks) {
      taskApp.tasks = tasks;
      taskApp.renderTasks();
      $('#task_title').val('').focus();
      $('#task_description').val('');
      $('#task_completed').removeProp('checked'); // Thanks David Mark
    })
  },

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
      var $li = this.taskHTML(task);
      $li.appendTo('#tasks');
    }
  },

  taskHTML: function (task) {
    var $li = $('<li/>');
    $li.attr('data-task-id', task.id);
    var $span = $('<span/>').text(task.title).attr('title', task.description);
    var $completed = $('<input>', { type: 'checkbox' });
    if (task.completed) {
      $completed.attr('checked', 'checked');
    }
    var $delete = $('<span>').addClass('delete').html(' &#x2718;');
    $li.append($span);
    $li.prepend($completed);
    $li.append($delete);
    return $li;
  }
};

$(document).ready(function () {

  taskApp.loadTasks();

  $('#new_task').on('submit', taskApp.createTask);

  // Requires event delegation because tasks are added to the page dynamically.
  $('#tasks').on('click', '.delete', taskApp.deleteTask);
  $('#tasks').on('click', ':checkbox', taskApp.toggleCompleted);

});

