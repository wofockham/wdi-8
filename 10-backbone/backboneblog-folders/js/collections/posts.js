// Like a fancy array for storing a collection of models.
// Uses underscore.js to give us ActiveRecordish methods (like .get)
var Posts = Backbone.Collection.extend({
  model: Post
});
