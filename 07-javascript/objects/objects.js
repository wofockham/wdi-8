// Exercise 1: Recipe

var recipe = {
  title: 'Welsh Rarebit',
  servings: 1,
  ingredients: ['bread', 'cheese', 'mustard', 'vegemite', 'fish fingers']
};

console.log(recipe.title);
console.log('Serves', recipe['servings']);

console.log('Ingredients');
for (var i = 0; i < recipe.ingredients.length; i++) {
  console.log(recipe.ingredients[i]);
}

// Exercise 2: Reading List

var books = [
  {
    title: '1984',
    author: 'Orwell',
    alreadyRead: true
  },
  {
    title: 'How To Fly A Drone',
    author: 'Charlie',
    alreadyRead: false
  },
  {
    title: 'Eloquent Javascript',
    author: 'Unpronouncable',
    alreadyRead: true
  }
];

for (var i = 0; i < books.length; i++) {
  var book = books[i];

  var desc = '"' + book.title + '" by ' + book.author;

  if (book.alreadyRead) {
    console.log('You already read', desc);
  } else {
    console.log('You still need to read', desc);
  }
}

// Exercise 3: Movies
var sharknado = {
  title: 'Sharknado',
  duration: 100,
  stars: ['That Plastic Surgery Woman', 'That Guy from 90210', 'Sharks']
};

var movieInfo = function(movie) {
  var info = '';
  info += movie.title;
  info += ' lasts for ' + movie.duration + ' minutes.';

  info += ' Stars: ' + movie.stars.join(', ');

  console.log(info);
};

// var num1 = prompt('Enter the first number');
// console.log('The first number is ', num1);
