function stringy(n) {
  var newString = '';
  var i;

  for (i = 1; i <= n; i++) {
    if (i % 2 === 0) {
      newString += '0';
    } else {
      newString += '1';
    }
  }

  return newString;
}