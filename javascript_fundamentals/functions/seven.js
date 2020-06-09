var a = 7;

function myValue(a) {
  a += 10;
}

myValue(a);
console.log(a);

/*This code logs 7 for a few reasons. Numbers are immutable, and also there are two variables 
named 'a', one with a global scope and one with a local scope in the function. This local 
variable would shadow the outer variable, even if the global variable was mutable.*/