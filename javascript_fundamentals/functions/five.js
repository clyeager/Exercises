function someFunction() {
  myVar = 'This is global';
}

someFunction();
console.log(myVar);

/*This code does not logs 'This is global' because the assignment does not use the 'var' 
keyword, and therefore JS automatically creates a myVar global variable.*/