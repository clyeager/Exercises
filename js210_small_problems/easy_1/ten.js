function asciiValue(string) {
  var sum = 0;
  var i;

  for(i = 0; i < string.length; i++) {
    sum += string[i].charCodeAt();
  }

  return sum;
}