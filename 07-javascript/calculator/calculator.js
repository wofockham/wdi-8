var calculate = {
  tidy: function(a) {
    return parseFloat(a);
  },

  add: function(a, b) {
    return this.tidy(a) + this.tidy(b);
  },

  subtract: function(a, b) {
    return this.tidy(a) - this.tidy(b);
  },

  multiply: function(a, b) {
    return this.tidy(a) * this.tidy(b);
  },

  divide: function(a, b) {
    return this.tidy(a) / this.tidy(b);
  },

  operate: function(num1, num2, operation) {
    var result;

    if (operation === '+') {
      result = this.add(num1, num2);
    } else if (operation === '-') {
      result = this.subtract(num1, num2);
    } else if (operation === '*') {
      result = this.multiply(num1, num2);
    } else if (operation === '/') {
      result = this.divide(num1, num2);
    } else {
      result = 'Unknown operation';
    }

    return result;
  }
};

var num1 = prompt('Enter the first number');
var operation = prompt('Enter your operation: +, -, *, /');
var num2 = prompt('Enter the second number');

var result = calculate.operate(num1, num2, operation);
console.log('The result is', result);


