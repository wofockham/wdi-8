var whisper = whisper || {};

whisper.Secrets = Backbone.Collection.extend({
  url: '/secrets',
  model: whisper.Secret,
  initialize: function () {
    this.on('sync', function () {
      var secretsView = new whisper.SecretsView({collection: whisper.secrets});
      secretsView.render();
    });

    var secrets = this;

    secrets.fetch();

    setInterval(function () {
      secrets.fetch(); // this.fetch();
    }, 3000);
  }
});