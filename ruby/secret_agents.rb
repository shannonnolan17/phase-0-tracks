#write encrypt method that advances every letter of string one letter forward
test_word = "cat"
#seperate each letter
#advance letter
#put back together
index = 0
while index < test_word.length
  test_word[index] =
    test_word[index].next!
  index += 1
end
puts test_word


#write decrypt method
#define alphabet
#find letter index for each position of string and subtract 1
#find alphabet letter by using those indices
#add string of alphabet letters to put back together