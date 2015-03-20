var whisper = whisper || {};

whisper.AppView = Backbone.View.extend({
  el: '#main',
  render: function () {
    // Render the app view itself
    var html = $('#appView').html();
    this.$el.html(html);

    // Within the app view, render the new secret form.
    var newSecretView = new whisper.NewSecretView();
    newSecretView.render();
  }
});
