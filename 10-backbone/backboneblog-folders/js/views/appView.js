// Like Rails views but with the event handling stored here as well.
// Responsible for showing data on the page, but also allowing interaction.
var AppView = Backbone.View.extend({
  el: '#main', // define the selector which this view is associated with
  render: function () {
    var appViewHTML = $('#appView-template').html();
    this.$el.html(appViewHTML);

    this.collection.each(function (post) {
      var postListView = new PostListView({model: post});
      postListView.render();
    });
  }
});
