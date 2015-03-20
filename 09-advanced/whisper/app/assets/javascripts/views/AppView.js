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

    // Also within the app view, render all the secrets previously fetch()ed.
    var secretsView = new whisper.SecretsView({collection: whisper.secrets});
    secretsView.render();
  }
});
