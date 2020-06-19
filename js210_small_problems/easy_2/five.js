function triangle(n) {
  var count;
  var row;
  var i;
  var spaces;
  var stars;

  for(i = 1; i <= n; i++) {
    row = '';
    spaces = n - i;
    stars = n - spaces;

    count = 1;
    while (count <= spaces) {
      row += ' ';
      count++;
    }

    count = 1;
    while (count <= stars) {
      row += '*';
      count++;
    }

    console.log(row);
  }
}