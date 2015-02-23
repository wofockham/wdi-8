var numbers = [];

$(document).ready(function () {
  var addBox = function (n) {
    var $box = $('<div/>').addClass('box');
    $box.text(n);
    $box.prependTo('#boxes');
  };


  var showNumbers = function () {
    $('#boxes').empty();
    _(numbers).each(addBox);
  };

  var addNumber = function () {
    var n = $('#number').val();
    n = parseInt(n);

    numbers.push(n);

    addBox(n);

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


  var timer = null;

  $('#start').on('click', function () {
    clearInterval(timer);
    timer = setInterval(addRandom, 500);
  });

  $('#stop').on('click', function () {
    clearInterval(timer);
  });

  var addRandom = function () {
    var n = _.random(10000);
    numbers.push(n);
    addBox(n);
  };

});











