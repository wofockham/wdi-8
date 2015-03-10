var PostListView = Backbone.View.extend({
  tagName: 'li', // new PostListView will use this to create a new <li>
  events: {
    'click': 'showPost'
  },
  render: function () {
    // Fetch and compile the template.
    var postListViewTemplate = $('#postListView-template').html();
    var postListViewHTML = _.template(postListViewTemplate);

    // Set the content of this view's element to be the template for this model.
    this.$el.html(postListViewHTML(this.model.toJSON()));

    // Append this view's element to the #posts ul on the page.
    $('#posts').append(this.$el);
  },
  showPost: function () {
    appRouter.navigate('posts/' + this.model.get('slug'), true);
  }
});
