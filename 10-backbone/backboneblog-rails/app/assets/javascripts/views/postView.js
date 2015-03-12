var app = app || {};

app.PostView = Backbone.View.extend({
  el: '#main',
  events: {
    'click button': 'submitComment'
  },
  render: function () {
    var postViewTemplate = $('#postView-template').html();
    var postViewHTML = _.template(postViewTemplate);

    this.$el.html(postViewHTML(this.model.toJSON()));

    this.comments = new app.Comments({post_id: this.model.get('id')});
    this.comments.fetch();
  },
  submitComment: function (event) {
    event.preventDefault();
    var author = $('#author').val();
    var content = $('#content').val();

    $('#author, #content').val('');

    var comment = new app.Comment({
      author: author,
      content: content,
      post_id: this.model.get('id')
    });

    var view = this;
    comment.save().done(function (newComment) {
      //view.comments.add(newComment);
      view.comments.fetch(); // Refresh all the comments.
    });

  }
});
