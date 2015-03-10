// Seed data -- later we'll retrieve these from the server via AJAX instead.
var blogPosts = new Posts([
  new Post({id: 1, slug: 'groucho', title: 'Post 1', content: 'Content the first'}),
  new Post({id: 2, slug: 'harpo', title: 'Post 2', content: 'Second content'}),
  new Post({id: 3, slug: 'post-about-hotdogs', title: 'Post 3', content: 'Hotdogs'}),
  new Post({id: 4, slug: 'chico', title: 'Post 4', content: 'Draft post about hotdogs'})
]);

// This is global so we access it inside certain views.
var appRouter = new AppRouter();

$(document).ready(function () {
  // This kicks off the router and makes the Back and Foward buttons work.
  Backbone.history.start();
});
