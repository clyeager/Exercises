function twice(number) {
  if (isDoubleNumber(number)) {
    return number;
  } else {
    return number * 2;
  }
}

function isDoubleNumber(number) {
  var stringNumber = String(number);
  var center = stringNumber.length / 2;
  var leftNumber = stringNumber.substring(0, center);
  var rightNumber = stringNumber.substring(center);

  return leftNumber === rightNumber;
}