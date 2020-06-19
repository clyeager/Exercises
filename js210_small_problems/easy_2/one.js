function crunch(string) {
  var newString = '';
  var lastChar = '';
  var i;

  for(i = 0; i < string.length; i++) {
    if (string[i] === lastChar) {
      continue;
    } else {
      lastChar = string[i];
      newString += string[i];
    }
  }

  return newString;
}