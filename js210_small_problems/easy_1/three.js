var length = parseInt(prompt('Enter the length of the room in meters:'), 10);
var width = parseInt(prompt('Enter the width of the room in meters:'), 10);

var meters = length * width;
var feet = meters * 10.7639;

console.log(`The area of the room is ${meters} meters (${feet} square feet).`);

//Further exploration

var meters;
var feet;

var length = parseInt(prompt('Enter the length of the room:'), 10);
var width = parseInt(prompt('Enter the width of the room:'), 10);
var feetOrMeters = prompt('Is this in meters or feet?');

if (feetOrMeters === 'meters') {
  meters = length * width;
  feet = meters * 10.7639;
  console.log(`The area of the room is ${meters} meters (${feet} square feet).`);
} else {
  feet = length * width;
  meters = Math.round(feet / 10.7639);
  console.log(`The area of the room is ${feet} feet (${meters} meters).`);
}