var PostView = Backbone.View.extend({
  el: '#main',
  render: function () {
    var postViewTemplate = $('#postView-template').html();
    var postViewHTML = _.template(postViewTemplate);

    this.$el.html(postViewHTML(this.model.toJSON()));
  }
});
