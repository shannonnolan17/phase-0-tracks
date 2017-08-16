collection_of_names = []

loop do
puts "Would you like a spy name? Type 'y' for yes and 'quit' for no."
user_input = gets.chomp
break if user_input == "quit"
#swap first and last names but defining first and last name

puts "Please enter name:"
name = gets.chomp.downcase

new_name = name.split(" ")
first_name = new_name[0]
last_name = new_name[1]
swapped_name = last_name, first_name
original_name = swapped_name.join(", ")

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
      char.next
    end
  end
#join new string together to form name
spy_name = new_name.join('')
puts spy_name
collection_of_names << spy_name

collection_of_names.each do |name|
  puts "#{spy_name} is actually #{first_name} #{last_name}"

end
end