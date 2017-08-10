
puts "How many employees are you processing?"
  user_input = gets.to_i

while user_input > 0


puts "What is your name?"
  name = gets.chomp

puts "How old are you?"
  age = gets.to_i
puts "What year were you born?"
  year = gets.to_i
age_check = age == (Time.new.year - year)

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
  garlic = gets.chomp == "yes"

puts "Would you like to enroll in the company’s health insurance?"
  insurance = gets.chomp == "yes"


if name == "Drake Cula" || name == "Tu Fang"

  puts "Definitely a vampire"
elsif(age_check && garlic) || insurance
  puts "Probably not a vampire"
elsif
  puts "Almost certainly a vampire"

elsif (age_check == false && garlic == "no") || insurance == "no"
  puts "Probaly not a vampire"

elsif
  puts "Results are inconclusive"
end
puts "Please list your allergies one by one. Type done when finished."
allergies = gets.chomp
until allergies == "done"
      allergies = gets.chomp
      if allergies == "sunshine"
        puts "Probably a Vampire"
        break
      end
end
user_input -= 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends!"

