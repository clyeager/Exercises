function logInBox(string) {
  var topAndBottomRow = '';
  var emptyMiddleRow = '';
  var i;
  var stringRow = `| ${string} |`;

  for(i = 0; i <= (string.length + 3); i++) {
    if (i === 0 || i === (string.length + 3)) {
      topAndBottomRow += '+';
    } else {
      topAndBottomRow += '-';
    }
  }

  for(i = 0; i <= (string.length + 3); i++) {
    if (i === 0 || i === (string.length + 3))  {
      emptyMiddleRow += '|';
    } else {
      emptyMiddleRow += ' ';
    }
  }

  console.log(topAndBottomRow);
  console.log(emptyMiddleRow);
  console.log(stringRow);
  console.log(emptyMiddleRow);
  console.log(topAndBottomRow);
}