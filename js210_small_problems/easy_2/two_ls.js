function logInBox(message) {
  var horizontalRule = '+' + repeatChar('-', message.length + 2) + '+';
  var emptyLine = '|' + repeatChar(' ', message.length + 2) + '|';

  console.log(horizontalRule);
  console.log(emptyLine);
  console.log('| ' + message + ' |');
  console.log(emptyLine);
  console.log(horizontalRule);
}

function repeatChar(char, times) {
  var repeated = '';
  while (repeated.length < times) {
    repeated += char;
  }

  return repeated;
}