/*let rlSync = require('readline-sync');
let phrase = rlSync.question('Please enter a phrase:');

console.log(`There are ${phrase.length} characters in ${phrase}.`)
*/
//Further exploration:

let rlSync = require('readline-sync');
let phrase = rlSync.question('Please enter a phrase:');
let regex = /\s/g;

let phraseWithoutSpaces = phrase.replace(regex, '');

console.log(`There are ${phraseWithoutSpaces.length} characters in "${phrase}".`);

let newRegex = /[^a-z]/gi;
let phraseOnlyAlphaChars = phraseWithoutSpaces.replace(newRegex, '');

console.log(`There are ${phraseOnlyAlphaChars.length} characters in "${phrase}".`);