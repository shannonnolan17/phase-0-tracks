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

if name == "Drake Cula" || "Tu Fang"
  puts "Definitely a vampire"
elsif(age_check && garlic) || insurance
  puts "Probably not a vampire"
elsif
  puts "Almost certainly a vampire"
elsif (age_check == false || garlic == "no") || insurance == "no"
  puts "Probaly not a vampire"

end
