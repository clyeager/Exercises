var a = [1, 2, 3];

function myValue(b) {
  b[2] += 7;
}

myValue(a);
console.log(a);

/*This code logs [1, 2, 10] since reassignment of an element within an array mutates the 
array. Since b is assigned to the original array passed in, both variables point to 
the same array.*/