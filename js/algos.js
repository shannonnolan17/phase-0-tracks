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

  for (var e = 0; e < arrayPair1.length; e++){
    for(var c = 0; c < arrayPair2.length; c++){
      if (arrayPair1[e] == arrayPair2[c]) {
         return true;
       }else {
         continue;
         return false;
      }
    }
  }
}



//Define function with integer parameter
//Define letters of alphabet
//Define string length-- random between 1 and 10
//Define empty string for word
//Define empty array for words
//For as  many times as the integer entered is
  //for as many times as the random string length
    //loop through the alphabet randomly and put into string
  //push word into array

function wordMaker() {
  var possible = "abcdefghiklmnopqrstuvwxyz";
  var newWord = "";
  var stringLength = Math.floor(Math.random() * 10);
  while (newWord.length < stringLength){
  newWord += possible[Math.floor(Math.random() * stringLength)];
}
  return newWord
}

function randomWord (integer){
  var wordArray = [];
  for (var d = 0; d < integer; d++) {
    word = wordMaker();
    wordArray.push(word);
  }
  return wordArray;
}


//DRIVER CODE------------------------------------------------

var times = 10;
for(var b=0; b < times; b++){
  word = (randomWord(3));
  console.log(word);
  longWordArray = (longestWord(word));
  console.log(longWordArray);
}
//----------------------------------------------------------
// console.log(randomWord(2));
// console.log(randomWord(3));

// console.log(matchingPairs({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
// console.log(matchingPairs({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));
// console.log(matchingPairs({animal: "Cat", legs: 4}, {animal: "Dog", legs: 3}));


// console.log(longestWord(["long phrase","longest phrase","longer phrase"]));
// console.log(longestWord(["Emma", "Shannon"]));
