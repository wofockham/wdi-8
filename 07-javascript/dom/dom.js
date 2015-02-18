console.log('hello world', document.body);

var body = document.getElementsByTagName('body')[0];
body.style['font-family'] = "Arial, sans-serif";

document.getElementById('nickname').innerHTML = 'fathead';
document.getElementById('favorites').innerHTML = 'butterflies, string quartets';
document.getElementById('hometown').innerHTML = 'Chicago';

var nodes = document.getElementsByTagName('li');
for (var i = 0; i < nodes.length; i++) {
  nodes[i].className = 'listitem';
};

var img = document.createElement('img');
img.src = 'https://pbs.twimg.com/media/B9_bNupIUAAEQ1D.jpg';
document.body.appendChild(img);
