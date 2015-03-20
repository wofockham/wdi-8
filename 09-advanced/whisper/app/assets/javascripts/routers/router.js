var whisper = whisper || {};

whisper.Router = Backbone.Router.extend({
  routes: {
    '': 'index'
  },

  index: function () {
    var appView = new whisper.AppView();
    appView.render();
  }
});
