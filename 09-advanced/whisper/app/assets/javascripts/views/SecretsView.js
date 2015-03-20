var whisper = whisper || {};

whisper.SecretsView = Backbone.View.extend({
  el: '#secrets',
  render: function () {
    var view = this;
    this.$el.empty();
    this.collection.each(function (secret) {
      var $li = $('<li/>').text(secret.get('content'));
      view.$el.prepend($li);
    });
  },
});