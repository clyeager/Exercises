function triangle(height) {
  var stars = 1;
  var spaces = height - 1;
  var i;

  for (i = 0; i < height; i += 1) {
    console.log(repeat(' ', spaces) + repeat('*', stars));
    stars += 1;
    spaces -= 1;
  }
}

function repeat(char, count) {
  var repeated = '';
  var i;

  for (i = 0; i < count; i += 1) {
    repeated += char;
  }

  return repeated;
}