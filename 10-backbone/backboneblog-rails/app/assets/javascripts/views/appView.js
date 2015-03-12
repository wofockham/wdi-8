var app = app || {};

// Like Rails views but with the event handling stored here as well.
// Responsible for showing data on the page, but also allowing interaction.
app.AppView = Backbone.View.extend({
  el: '#main', // define the selector which this view is associated with
  render: function () {
    var appViewHTML = $('#appView-template').html();
    this.$el.html(appViewHTML);
    app.blogPosts.fetch();
  }
});
