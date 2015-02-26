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
      var $li = $('<li/>');
      var $span = $('<span/>').text(task.title).attr('title', task.description);
      var $completed = $('<input>', { type: 'checkbox' });
      var $delete = $('<span>').addClass('delete').html(' &#x2718;');
      $li.append($span);
      $li.prepend($completed);
      $li.append($delete);
      $li.appendTo('#tasks');
    }
  }
};

$(document).ready(function () {

  taskApp.loadTasks();

  $('#new_task').on('submit', taskApp.createTask);

});