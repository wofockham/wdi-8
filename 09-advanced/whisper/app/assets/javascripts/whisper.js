$(document).ready(function () {
  whisper.router = new whisper.Router();
  Backbone.history.start();

  whisper.secrets = new whisper.Secrets();
});
