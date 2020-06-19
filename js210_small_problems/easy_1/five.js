function addConsecutive(integer) {
  var i;
  var sum = 0;

  for(i = 1; i <= integer; i++) {
    sum += i;
  }

  return sum;
}

function multiplyConsecutive(integer) {
  var i;
  var product = 1;

  for(i = 1; i <= integer; i++) {
    product *= i
  }

  return product;
}

var integer = parseInt(prompt('Please enter an integer greater than 0:'));
var operation = prompt('Enter "s" to compute the sum, or "p" to compute the product.');

if (operation === 's') {
  var sum = addConsecutive(integer);
  console.log(`The sum of the integers between 1 and ${integer} is ${sum}.`)
} else {
  var product = multiplyConsecutive(integer);
  console.log(`The product of the integers between 1 and ${integer} is ${product}.`)
}