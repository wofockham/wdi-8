var AppRouter = Backbone.Router.extend({
  routes: {
    '': 'index',
    'posts/:id': 'viewPost'
  },

  index: function () {
    var appView = new AppView({collection: blogPosts});
    appView.render();
  },

  viewPost: function (id) {
    var post = blogPosts.get(id);
    var postView = new PostView({model: post});
    postView.render();
  }
});

var Post = Backbone.Model.extend({
  defaults: {
    title: 'New Post',
    content: 'New Post content'
  }
});

var Posts = Backbone.Collection.extend({
  model: Post
});

var blogPosts = new Posts([
  new Post({id: 1, title: 'Post 1', content: 'Content the first'}),
  new Post({id: 2, title: 'Post 2', content: 'Second content'}),
  new Post({id: 3, title: 'Post 3', content: 'Hotdogs'}),
  new Post({id: 4, title: 'Post 4', content: 'Draft post about hotdogs'})
]);

var AppView = Backbone.View.extend({
  el: '#main',
  render: function () {
    var appViewHTML = $('#appView-template').html();
    this.$el.html(appViewHTML);

    this.collection.each(function (post) {
      var postListView = new PostListView({model: post});
      postListView.render();
    });
  }
});

var PostListView = Backbone.View.extend({
  tagName: 'li',
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
    appRouter.navigate('posts/' + this.model.get('id'), true);
  }
});

var PostView = Backbone.View.extend({
  el: '#main',
  render: function () {
    var postViewTemplate = $('#postView-template').html();
    var postViewHTML = _.template(postViewTemplate);

    this.$el.html(postViewHTML(this.model.toJSON()));
  }
});

var appRouter = new AppRouter();

$(document).ready(function () {
  Backbone.history.start();
});
