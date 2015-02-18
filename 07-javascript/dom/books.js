var books = [{
        title: 'The Design of EveryDay Things',
        author: 'Don Norman',
        alreadyRead: false
    },

    {
        title: 'The Most Human Human',
        author: 'Brian Christian',
        alreadyRead: true
    }
];

for (var i = 0; i < books.length; i++) {
  var book = books[i];
  var p = document.createElement('p');
  p.innerHTML = '<b>' + book.title + '</b> by ' + book.author;
  document.body.appendChild(p);
}
