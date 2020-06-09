var myVar = 'This is global';

function someFunction() {
  var myVar = 'This is local';
}

someFunction();
console.log(myVar);

/*This code prints 'This is global' because the myVar variable inside the function is a 
separate scope and also a completely separate variable.*/