var links = document.querySelectorAll('a');

for (var i = 0; i < links.length; i++) {
  var link = links[i];

  var video = link.getAttribute('href');
  var thumb = youtube.generateThumbnailUrl(video);

  var image = document.createElement('img');
  image.setAttribute('src', thumb);

  link.appendChild(image);
};
