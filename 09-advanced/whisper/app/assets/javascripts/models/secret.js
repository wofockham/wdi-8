var whisper = whisper || {};

whisper.Secret = Backbone.Model.extend({
  urlRoot: '/secrets',
  defaults: {
    content: ''
  }
});