var myVar = 'This is global';

function someFunction() {
  myVar = 'This is local';
}

someFunction();
console.log(myVar);

//This code logs 'This is local' because global variable myVar is reassigned on line 4.