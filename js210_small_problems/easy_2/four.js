function findFibonacciIndexByLength(n) {
  var i = 2;
  var firstNumber = 1;
  var secondNumber = 1;
  var nextNumber;

  while (String(secondNumber).length !== n) {
    nextNumber = firstNumber + secondNumber;
    firstNumber = secondNumber;
    secondNumber = nextNumber;
    i++;
  }

  return i;
}