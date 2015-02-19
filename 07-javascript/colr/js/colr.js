var blue = 0;

$(window).on('mousemove', function (event) {
  var red = Math.round((event.pageX / window.innerWidth) * 255);
  var green = Math.round((event.pageY / window.innerHeight) * 255);

  // Thanks May!
  var pageZ = Math.sqrt(event.pageY * event.pageY + event.pageX * event.pageX)
  var innerZ = Math.sqrt(window.innerWidth * window.innerWidth + window.innerHeight * window.innerHeight)
  var blue = Math.round(pageZ/innerZ  * 255);

  var rgb = 'rgb(' + red + ', ' + green + ', ' + blue + ')';

  $('body').css('background-color', rgb);
  $('#colour').val(rgb);
});
