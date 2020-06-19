function cleanUp(string){
  var newString = '';

  for(i = 0; i < string.length; i++) {
    if (string[i].match(/[a-zA-Z]/)) {
      newString += string[i];
    } else if (newString[newString.length - 1] !== ' ') {
      newString += ' ';
    }
  }

  return newString;
}