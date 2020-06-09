var myVar = 'This is global';

function someFunction() {
  console.log(myVar);
}

someFunction();

//This logs 'This is global' because global variable myVar is accessible inside the function.