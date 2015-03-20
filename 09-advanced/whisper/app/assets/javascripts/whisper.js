$(document).ready(function () {
  whisper.secrets = new whisper.Secrets();
  whisper.secrets.fetch().done(function () {
    whisper.router = new whisper.Router();
    Backbone.history.start();
  });
});