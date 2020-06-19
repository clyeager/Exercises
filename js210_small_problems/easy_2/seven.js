function twice(n) {
  var string = String(n);

  if (doubleNumber(string)) {
    return n;
  } else {
    return n * 2;
  }
}

function doubleNumber(string) {
  var firstHalf = '';
  var secondHalf = '';
  var half = string.length / 2;
  var i;

  for(i = 0; i < string.length; i++) {
    if (i < half) {
      firstHalf += string[i];
    } else {
      secondHalf += string[i];
    }
  }

  if (firstHalf === secondHalf) {
    return true;
  } else {
    return false;
  }
}