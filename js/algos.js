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

//define function with two parameters
//create empty arrays
//iterate through each hash and place the values into empty
//arrays
//compare each index of the array and compare with index of o
//other array to look for matches
//if there are matches return true

function matchingPairs(obj1, obj2){
  arrayPair1 = []
  arrayPair2 = []
  for (var value in obj1){
    arrayPair1.push(obj1[value]);
}
  for (var value in obj2){
    arrayPair2.push(obj2[value]);
}

  for (var i = 0; i < arrayPair1.length; i++){
    if (arrayPair2.indexOf(arrayPair1[i]) > -1){
      return true;
    }else {
      return false;
  }
}

  // for (var i = 0; i < arrayPair1.length; i++) {
  //   for (var e = 0; e < arrayPair2.length; e++) {
  //       if (arrayPair1[i] == arrayPair2[e]){
  //         return true;
  //       }else{
  //         return false;
  //       }
  //       }
  //   }

}


console.log(matchingPairs({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(matchingPairs({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));
console.log(matchingPairs({animal: "Cat", legs: 4}, {animal: "Dog", legs: 3}));


console.log(longestWord(["long phrase","longest phrase","longer phrase"]));
console.log(longestWord(["Emma", "Shannon"]));


