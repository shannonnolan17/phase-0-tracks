collection_of_names = []

puts "Would you like a spy name? Type 'y' for yes and 'quit' for no."
user_input = gets.chomp
while user_input == "y"
puts " Type 'y' for a new name and 'quit' to stop"
user_input = gets.chomp
break if user_input == "quit"
#swap first and last names but defining first and last name

puts "Please enter name:"
initial_name = gets.chomp.downcase

new_name = initial_name.split(" ")
swapped_name = new_name[1], new_name[0]
original_name = swapped_name.join(" ")

#define vowels and alphabet w/o vowels
  vowels = ["a", "e", "i", "o", "u"]
  alphabet = ["b","c", "d","f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]

#split strings
  new_name = original_name.split('')
  p new_name

#iterate through string and for each character, advance to next vowel in array.
#else advance to next letter in alphabet
new_name.map! do |char|
    if vowels.include? char
      vowels.rotate(1)[vowels.index(char)]
    elsif alphabet.include? char
      alphabet.rotate(1)[alphabet.index(char)]
    end
  end

#join new string together to form name
name_together = new_name.join('')
spy_name = name_together.capitalize
puts spy_name
end

collection_of_names << spy_name
collection_of_names.each do |name|
  puts "#{spy_name} is actually #{initial_name.capitalize}"

end


