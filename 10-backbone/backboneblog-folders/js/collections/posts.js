var app = app || {};

// Like a fancy array for storing a collection of models.
// Uses underscore.js to give us ActiveRecordish methods (like .get)
app.Posts = Backbone.Collection.extend({
  model: app.Post
});
