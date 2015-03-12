var app = app || {};

// Kind of like the Rails router with embedded actions.
// Makes the application navigatable, with meaningful URLs.
app.AppRouter = Backbone.Router.extend({
  routes: {
    '': 'index',
    'posts/:id': 'viewPost'
  },

  index: function () {
    var appView = new app.AppView({collection: app.blogPosts});
    appView.render();
  },

  viewPost: function (id) {
    app.blogPosts.fetch().done(function () {
      var post = app.blogPosts.get(id);
      var postView = new app.PostView({model: post});
      postView.render();
    });
  }
});
