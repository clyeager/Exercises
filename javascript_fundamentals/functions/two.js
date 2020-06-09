var myVar = 'This is global';

function someFunction() {
  var myVar = 'This is local';
  console.log(myVar);
}

someFunction();

/*This code logs 'This is local' because myVar created on line 4 is within the local scope of 
the function, which also means it shadows the outer myVar variable since they have the 
same name.*/