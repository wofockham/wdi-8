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
