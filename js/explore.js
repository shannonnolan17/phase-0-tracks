// declare function with parameter
// declare new empty string to return
// for each letter less than the length of the string
//start at end of string and add last letter to new string
// continue to add letters to new string in reverse order
// return the new string

function reverseString(str){
  var newString = "";
  for (var i = str.length - 1; i >= 0; i--) {
    newString += str[i];
    }
  return newString;
}

console.log(reverseString("hello"));