$(document).ready(function () {

  // $('#makeSundae').on('click', function () {
  //   if ($('#flavour').val() === 'Chocolate') {
  //     console.log('chocolate');
  //   } else {
  //     console.log('hipsters');
  //   }
  // });

  $('#makeSundae').on('click', function () {
    console.log('chocolate event handler');
    if ($('#flavour').val() !== 'Chocolate') {
      return;
    }

    console.log('I am making chocolate');
  });

  $('#makeSundae').on('click', function () {
    console.log('salted caramel event handler');
    if ($('#flavour').val() !== 'Salted Caramel') {
      return;
    }

    console.log('I am making salted caramel');
  });
});


$(document).ready(function () {
  var oddBehaviour = 0;

  $('#erratic').on('click', function () {
    if (oddBehaviour < 3) {
      console.log('Early odd');
    } else {
      console.log('Later odd');
    }
    console.log('oddBehaviour counter is', oddBehaviour);
    oddBehaviour++;
  });
});

$(document).ready(function () {
  $('#toggle').on('click', function () {
    // if ($(this).hasClass('active')) {
    //   $(this).removeClass('active');
    //   console.log('Switching off');
    // } else {
    //   $(this).addClass('active');
    //   console.log('Switching on');
    // }
    $(this).toggleClass('active');
  });
});













