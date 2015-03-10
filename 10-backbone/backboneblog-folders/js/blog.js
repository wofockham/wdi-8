var app = app || {};

// Seed data -- later we'll retrieve these from the server via AJAX instead.
app.blogPosts = new app.Posts([
  new app.Post({id: 1, slug: 'groucho', title: 'Post 1', content: 'Content the first'}),
  new app.Post({id: 2, slug: 'harpo', title: 'Post 2', content: 'Second content'}),
  new app.Post({id: 3, slug: 'post-about-hotdogs', title: 'Post 3', content: 'Hotdogs'}),
  new app.Post({id: 4, slug: 'chico', title: 'Post 4', content: 'Draft post about hotdogs'})
]);


$(document).ready(function () {
  // This is global so we access it inside certain views.
  app.appRouter = new app.AppRouter();

  // This kicks off the router and makes the Back and Foward buttons work.
  Backbone.history.start();
});
