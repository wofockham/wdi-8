var $links = $('a');

$links.each(function (i, elem) {
  var thumb = youtube.generateThumbnailUrl(elem.href);
  $('<img>', {src: thumb}).appendTo(elem);
});
