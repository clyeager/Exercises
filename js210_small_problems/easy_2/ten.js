function century(year) {
  var year = year / 100;
  var checkEdgeCases;

  if (year !== parseInt(year)) {
    year = parseInt(year + 1);
  }

  var stringCentury = String(year);
  var length = stringCentury.length;

  checkEdgeCases = stringCentury.substring(length - 2, length);

  if (checkEdgeCases === '11' || checkEdgeCases === '12' || checkEdgeCases === '13') {
    return stringCentury + 'th';
  }

  lastDigits = stringCentury[length - 1];
  switch(lastDigits) {
    case '1':
      ending = 'st';
      break;
    case '2':
      ending = 'nd';
      break;
    case '3':
      ending = 'rd';
      break;
    default:
      ending = 'th';
  }

  return stringCentury + ending;
}

century(2000);
century(2001);
century(1965);
century(256);
century(5);
century(10103);
century(1052);
century(1127);
century(11201);