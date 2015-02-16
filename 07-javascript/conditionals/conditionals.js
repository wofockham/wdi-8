// Exercise 1: Which number's bigger?
var greaterNum = function(num1, num2) {
  if (num1 > num2) {
    return num1;
  } else {
    return num2;
  }
}

var a = 17;
var b = 25;

console.log("The greater number of " + a + " and " + b + " is " + greaterNum(a, b));

a = 300;
b = -1;
console.log("The greater number of " + a + " and " + b + " is " + greaterNum(a, b));


// Exercise 2: Hello World
var helloWorld = function (country) {
  if (country == 'es') {
    return 'Hola, Mundo';
  } else if (country == 'de') {
    return 'Hallo, Welt';
  } else {
    return "Hello, World"
  }
}

console.log(helloWorld('es'));
console.log(helloWorld('de'));
console.log(helloWorld('en'));


// Exercise 3: Grader
var assignGrade = function (score) {
  if (score >= 80) {
    return 'A';
  } else if (score >= 70) {
    return 'B';
  } else if (score >= 60) {
    return 'C';
  } else if (score >= 50) {
    return 'D';
  } else {
    return 'F';
  }
};

console.log(assignGrade(100));
console.log(assignGrade(65));
console.log(assignGrade(79));
console.log(assignGrade(45));

// Exercise 4: Pluralizer
var pluralizer = function (count, noun) {
  if (count == 1) {
    return count + ' ' + noun;
  } else {
    return count + ' ' + noun + 's';
  }
};

console.log(pluralizer(1, 'dog'));
console.log(pluralizer(0, 'dog'));
console.log(pluralizer(1001, 'dalmatian'));








