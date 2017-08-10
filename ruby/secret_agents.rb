#Asks a secret agent (the user) whether they would like to decrypt or encrypt a password
puts "Would you like to decrypt or encrypt a password?"
user_input = gets.chomp
if user_input == "encrypt"
#encrypt method that advances every letter of string one letter forward

#use loop to go through string and for each letter, find the next letter

  #Asks them for the password
  puts "What is your password?"
  text = gets.chomp
  counter = 0
    while counter < text.length
        text[counter] =
          text[counter].next!
    counter += 1
    end
#Conducts the requested operation, prints the result to the screen, and exits
  puts text

#decrypt method that does the opposite of above

else
#loop through the string, find the index of the alphabet and the string and shovel it into an empty string

  puts "What is your password?"
  word = gets.chomp
  counter = 0
  decrypted_msg = ""
  while counter < word.length
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    encrypted_position = alphabet.index(word[counter])
    decrypted_position = encrypted_position - 1
    decrypted_msg<<alphabet[decrypted_position]
    counter += 1
  end
#print the empty string
  puts decrypted_msg
end





#encrypt("abc")
#encrypt("zed")
#decrypt("bcd")
#decrypt("afe")

# decrypt(encrypt("swordfish"))
#It works because it can take the swordfish and first encrypt it. Then #since we used the bang operator, it changed the string and then it #can decrypt it.
