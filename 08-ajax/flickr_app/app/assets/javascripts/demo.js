$(document).ready(function () {
  $('#nuke').on('click', function () {
    $('.bros').fadeOut(3000, function () {
      $('.bros').remove();
    });
  });
});
