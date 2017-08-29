//define function that takes an array as parameter
//define length of array for loop
//define empty array for longest word to go into
//loop through array
  //at each index, if the index is longer than the defined array length, add to the array
//return longest word or phrase array

function longestWord(arr){
  var arrayLength = arr.length
  var longest = [];
  for (var i = 1; i < arrayLength; i++) {
    if (arr[i].length > longest.length) {
        longest = arr[i];
      }
  return longest
  }
}
console.log(longestWord(["long phrase","longest phrase","longer phrase"]));
console.log(longestWord(["Emma", "Shannon"]));