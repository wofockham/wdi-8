var app = app || {};

// Our models, as per Rails.
app.Post = Backbone.Model.extend({
  defaults: {
    title: 'New Post',
    content: 'New Post content'
  }
});
