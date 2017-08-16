loop do
puts "Would you like a spy name? Type 'y' for yes and 'quit' for no."
user_input = gets.chomp
break if user_input == "quit"
#swap first and last names but defining first and last name
  puts "What is the first name you'd like to make a fake name with?"
  first_name = gets.chomp
  puts "What is the last name you'd like to make a fake name with?"
  last_name = gets.chomp
#swap by switching last and first and add together
  original_name = last_name.downcase +  first_name.downcase

  collection_of_names = []

#define vowels and alphabet w/o vowels
  vowels = ["a", "e", "i", "o", "u"]
  alphabet = ["b","c", "d","f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
#split strings
  new_name = original_name.split('')
#iterate through string and for each character, advance to next vowel in array.
#else advance to next letter in alphabet
  new_name.map! do |char|
    if vowels.include? char
      vowels.rotate(1)[vowels.index(char)]
    else
      alphabet.rotate(1)[alphabet.index(char)]
    end
  end
#join new string together to form name
spy_name = new_name.join('')
collection_of_names << spy_name

collection_of_names.each do |name|
  puts "#{name} is actually #{first_name} #{last_name}"
end
end


