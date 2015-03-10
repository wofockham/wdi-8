// Kind of like the Rails router with embedded actions.
// Makes the application navigatable, with meaningful URLs.
var AppRouter = Backbone.Router.extend({
  routes: {
    '': 'index',
    'posts/:id': 'viewPost'
  },

  index: function () {
    var appView = new AppView({collection: blogPosts});
    appView.render();
  },

  viewPost: function (slug) {
    var post = blogPosts.get(slug);
    var postView = new PostView({model: post});
    postView.render();
  }
});

// Our models, as per Rails.
var Post = Backbone.Model.extend({
  idAttribute: 'slug',
  defaults: {
    title: 'New Post',
    content: 'New Post content'
  }
});

// Like a fancy array for storing a collection of models.
// Uses underscore.js to give us ActiveRecordish methods (like .get)
var Posts = Backbone.Collection.extend({
  model: Post
});

// Seed data -- later we'll retrieve these from the server via AJAX instead.
var blogPosts = new Posts([
  new Post({id: 1, slug: 'groucho', title: 'Post 1', content: 'Content the first'}),
  new Post({id: 2, slug: 'harpo', title: 'Post 2', content: 'Second content'}),
  new Post({id: 3, slug: 'post-about-hotdogs', title: 'Post 3', content: 'Hotdogs'}),
  new Post({id: 4, slug: 'chico', title: 'Post 4', content: 'Draft post about hotdogs'})
]);

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

var PostView = Backbone.View.extend({
  el: '#main',
  render: function () {
    var postViewTemplate = $('#postView-template').html();
    var postViewHTML = _.template(postViewTemplate);

    this.$el.html(postViewHTML(this.model.toJSON()));
  }
});

// This is global so we access it inside certain views.
var appRouter = new AppRouter();

$(document).ready(function () {
  // This kicks off the router and makes the Back and Foward buttons work.
  Backbone.history.start();
});
