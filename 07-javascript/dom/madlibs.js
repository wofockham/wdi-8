var makeMadLib = function () {
  var noun = document.getElementById('noun').value;
  var adjective = document.getElementById('adjective').value;
  var person = document.getElementById('person').value;

  var story = [person, 'really likes', adjective, noun].join(' ');

  document.getElementById('story').innerHTML = story;
};

var button = document.getElementById('lib-button');
button.addEventListener('click', makeMadLib);
