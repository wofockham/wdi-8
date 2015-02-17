
console.log('hello world'); // Statement

var name = 'Groucho'; // Local variable, single quoted string.

var surname = "Marx"; // Double quoted string, still no interpolation.

var age = 45;

var twiceAge = age * 2; // Operator.

/*

function greet () { // Look up function hoisting.

}

*/

var greet = function (name) {
  console.log('Greetings to you ' + name);
}

greet();
greet('harpo');

var doubler = function (i) {
  return i * 2;
}

var twiceSeven = doubler(7);

// jsbeautifier
if (twiceSeven === 14) {
  console.log('doubler() seems to be working');
  if (day === 'Saturday') {
    console.log('Have a nice day');
  }
} else {
  console.log('doubler() appears to be broken');
}

var i = 5; // initial
while (i > 0) { // conditional
  console.log(i);
  i = i - 1; // update
}

for (var i = 5; i > 0; i--) {
  console.log(i);
}

