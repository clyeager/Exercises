var a = 7;

function myValue(b) {
  b += 10;
}

myValue(a);
console.log(a);

/*This code logs 7 because arguments passed into functions become local variables inside the 
function and changing them does not change the outer global variable. It is also a primitive 
value, which is immutable.*/