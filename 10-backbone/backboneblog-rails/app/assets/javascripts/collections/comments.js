var app = app || {};

app.Comments = Backbone.Collection.extend({
  url: function () {
    return '/posts/' + this.postID + '/comments';
  },
  model: app.Comment,
  initialize: function (options) {
    this.postID = options.post_id;
    this.on('add', function (comment) {
      var commentView = new app.CommentView({model: comment});
      commentView.render();
    });
  }
});