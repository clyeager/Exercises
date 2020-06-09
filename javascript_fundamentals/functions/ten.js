logValue();

function logValue() {
  console.log('Hello, world!');
}

//This logs 'Hello, world' because the entire function gets hoisted to the top.

var logValue = 'foo';

function logValue() {
  console.log('Hello, world!');
}

console.log(typeof logValue);

//This code logs 'string' because of hoisting. The code is the same as:

function logValue() {
  console.log('Hello, world!');
}

logValue = 'foo';
console.log(typeof logValue);