var name = 'Bob';
var saveName = name;
name = 'Alice';
console.log(name, saveName);

//This code logs Alice Bob

var name = 'Bob';
var saveName = name;
name.toUpperCase();
console.log(name, saveName);

//This log logs Bob Bob because toUpperCase is not a mutating method.
/*Further exploration: Strings can call methods even though they are immutable because 
JS converts the value into a temporary String object to access methods.*/