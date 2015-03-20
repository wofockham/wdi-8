var whisper = whisper || {};

whisper.Secrets = Backbone.Collection.extend({
  url: '/secrets',
  model: whisper.Secret,
  initialize: function () {
    this.on('sync', function () {
      var secretsView = new whisper.SecretsView({collection: whisper.secrets});
      secretsView.render();
    });

    this.start();
  },

  start: function () {
    var secrets = this;

    secrets.fetch();

    this.timer = setInterval(function () {
      secrets.fetch(); // this.fetch();
    }, 3000);
  },

  stop: function () {
    clearInterval(this.timer);
  }
});
