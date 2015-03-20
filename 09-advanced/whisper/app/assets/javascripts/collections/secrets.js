var whisper = whisper || {};

whisper.Secrets = Backbone.Collection.extend({
  url: '/secrets',
  model: whisper.Secret
});