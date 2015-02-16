// Exercise 1: Fortune Teller

var tellFortune = function (numChildren, partnerName, geoLocation, job) {
  console.log('You will be a ' + job + ' in ' + geoLocation + ', and married to ' + partnerName + ' with ' + numChildren + ' kids.');
};

tellFortune(4, 'Hooch', 'Seattle', 'Dental Hygienest');
tellFortune(3, 'Barry', 'Sydney', 'Undertaker');
tellFortune(2, 'Brian', 'Blackheath', 'Card dealer');

// Exercise 2: Age calculator

var calculateAge = function (birthYear, currentYear) {
  var postBirthdayAge = currentYear - birthYear;
  var preBirthdayAge = postBirthdayAge - 1;
  console.log('You are either ' + preBirthdayAge + ' or ' + postBirthdayAge);
};

calculateAge(1900, 2015);
calculateAge(1950, 2015);
calculateAge(1980, 2015);

// Bonus version:
var calculateAgeDynamic = function (birthYear) {
  currentYear = (new Date()).getFullYear();
  var postBirthdayAge = currentYear - birthYear;
  var preBirthdayAge = postBirthdayAge - 1;
  console.log('You are either ' + preBirthdayAge + ' or ' + postBirthdayAge);
};

calculateAgeDynamic(1950);


// Exercise 3:
var calculateSupply = function (age, amountPerDay) {
  var maxAge = 55;
  var yearsRemaining = maxAge - age;
  var amountPerYear = amountPerDay * 365.25;
  var totalAmount = parseInt(amountPerYear * yearsRemaining);
  console.log("You will need " + totalAmount + " to last you until the ripe old age of " + maxAge);
};

calculateSupply(30, 12.5);
calculateSupply(50, 8);
calculateSupply(53, 100);


// Exercise 4:
var calcCircumference = function (radius) {
  var circ = 2 * Math.PI * radius;
  console.log("The circumference is " + circ);
};

var calcArea = function(radius) {
  var area = Math.PI * radius * radius;
  console.log("The area is " + area);
};

calcCircumference(25);
calcArea(25);


// Exercise 5:
var celsiusToFahrenheit = function (cels) {
  var fahren = cels * 1.8 + 32;
  console.log(cels + '°C is ' + fahren + '°F');
};

var fahrenheitToCelsius = function (fahren) {
  var cels = (fahren - 32) / 1.8;
  console.log(fahren + "°F is " + cels + "°C.");
}

celsiusToFahrenheit(37);
fahrenheitToCelsius(98.6);
