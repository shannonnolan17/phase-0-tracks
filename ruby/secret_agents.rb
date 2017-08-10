#write encrypt method that advances every letter of string one letter forward
#define word to be encrypted
test_word = "cat"

#define counting variable
counter = 0
#write loop to advance each letter forward and redefine encrypted word
while counter < test_word.length
  test_word[counter] =
    test_word[counter].next!
  counter += 1
end
#print redefined excrypted word
puts test_word


#write decrypt method
#define alphabet
alphabet = "abcdefghijklmnopqrstuvwxyz"
#find letter index for each position of string and subtract 1
counter = 0
alphabet.index(test_word[1])
while counter < test_word.length
  alphabet.index(test_word[counter])

  counter += 1
end

#find alphabet letter by using those indices
#add string of alphabet letters to put back together
