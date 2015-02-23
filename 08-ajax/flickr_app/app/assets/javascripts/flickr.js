var searchFlickr = function () {
  var query = $('#query').val();

  var flickrUrl = 'https://api.flickr.com/services/rest/?jsoncallback=?';

  $.getJSON(flickrUrl, {
    method: 'flickr.photos.search',
    api_key: '2f5ac274ecfac5a455f38745704ad084',
    text: query,
    format: 'json'
  }).done(processImages);
};

var processImages = function(result) {

  var photos = result.photos.photo;

  _(photos).each(function (photo) {
    var url = [
      'https://farm',
      photo.farm,
      '.staticflickr.com/',
      photo.server,
      '/',
      photo.id,
      '_',
      photo.secret,
      '_q.jpg'
    ].join('');

    var $img = $('<img>').attr('src', url);
    $img.appendTo('#images');

  });
};

$(document).ready(function () {
  $('#search').on('click', searchFlickr);
  $('#query').on('keypress', function (event) {
    // Ignore any keypresses that are not Enter.
    if (event.which !== 13) {
      return;
    }

    searchFlickr();
  });

});





