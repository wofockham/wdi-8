var app = app || {};

app.Comment = Backbone.Model.extend({
  defaults: {
    author: '',
    content: ''
  }
});