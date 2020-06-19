var billAmount = parseInt(prompt('What is the bill?'));
var tipPercentage = parseInt(prompt('What is the tip percentage?'));

var tipAmount = Math.round(billAmount * (tipPercentage / 100));
var totalBill = billAmount + tipAmount;

console.log(`The tip is $${tipAmount}`);
console.log(`The total is $${totalBill}`)