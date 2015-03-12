var app = app || {};

// Global collection of all blog posts.
app.blogPosts = new app.Posts();

$(document).ready(function () {

  if ($('#main').length === 0) {
    return;
  }

  // Replace <%= erb style %> with {{ Handlebars style }}
  // to prevent a conflict with Rails views.
  _.templateSettings = {
    interpolate: /\{\{(.+?)\}\}/g
  };

    // This is global so we access it inside certain views.
  app.appRouter = new app.AppRouter();

  // This kicks off the router and makes the Back and Foward buttons work.
  Backbone.history.start({pushState: false}); // Modernizr.history

});
