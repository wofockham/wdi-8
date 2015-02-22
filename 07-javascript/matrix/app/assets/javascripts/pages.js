var numbers = [];

$(document).ready(function () {
  var showNumbers = function () {
    $('#boxes').empty();
    _(numbers).each(function (n) {
      var $box = $('<div/>').addClass('box');
      $box.text(n);
      $box.prependTo('#boxes');
    });
  };

  var addNumber = function () {
    var n = $('#number').val();
    n = parseInt(n);

    numbers.push(n);

    var $box = $('<div/>').addClass('box');
    $box.text(n);
    $box.prependTo('#boxes');

    $('#number').val('').focus();
  };

  // $('#add_number').click(addNumber);
  $('#add_number').on('click', addNumber);


  var squareNumbers = function () {
    numbers = _(numbers).map(function (n) {
      return n * n;
    });
    showNumbers();
  };
  $('#square').on('click', squareNumbers);


  var customFunction = function () {
    numbers = _(numbers).map(calc);
    showNumbers();
  };

  var calc = function (i) {
    var equation = $('#number').val();
    return eval(equation);
  }

  $('#function').on('click', customFunction);
});
