// Our models, as per Rails.
var Post = Backbone.Model.extend({
  idAttribute: 'slug',
  defaults: {
    title: 'New Post',
    content: 'New Post content'
  }
});
