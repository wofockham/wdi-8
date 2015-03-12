var app = app || {};

app.Comments = Backbone.Collection.extend({
  url: function () {
    return '/posts/' + this.postID + '/comments';
  },
  model: app.Comment,
  initialize: function (postID) {
    this.postID = postID;
    this.on('add', function (comment) {
      console.log('new comment added', comment);
    });
  }
});