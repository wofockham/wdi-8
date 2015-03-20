var whisper = whisper || {};

whisper.NewSecretView = Backbone.View.extend({
  el: '#new-secret',
  events: {
    'submit form': 'createNewSecret'
  },
  render: function () {
    var html = $('#newSecretTemplate').html();
    this.$el.html(html);
  },
  createNewSecret: function (event) {
    event.preventDefault();
    var userContent = this.$('textarea').val();
    var secret = new whisper.Secret({content: userContent});
    secret.save();

    whisper.secrets.add(secret);

    this.$('textarea').val('');

    var secretsView = new whisper.SecretsView({collection: whisper.secrets});
    secretsView.render();
  }
});