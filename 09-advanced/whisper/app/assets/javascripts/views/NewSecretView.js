var whisper = whisper || {};

whisper.NewSecretView = Backbone.View.extend({
  el: '#new-secret',
  events: {
    'click .go': 'createNewSecret',
    'click .stop': 'stopPolling'
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

    // Add the new secret to the collection.
    whisper.secrets.add(secret);

    this.$('textarea').val('');
  },
  // I never wanted this feature anyway.
  stopPolling: function (event) {
    event.preventDefault();
    whisper.secrets.stop();
  }
});