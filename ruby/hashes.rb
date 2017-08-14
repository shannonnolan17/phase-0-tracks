
#Ask user for information and add input to hash
client_information = {}
puts "What is your name?"
client_information [:name] = gets.chomp

puts "How old are you?"
client_information [:age]  = gets.to_i

puts "How many children do you have?"
client_information [:children]  = gets.to_i

puts "What is your favorite decor theme?"
client_information [:decor_theme]  = gets.chomp

puts "Do you live near a beach?"
client_information [:beach] = gets.chomp

puts "Do you live in a city?"
client_information [:city] = gets.chomp
#print the hash back once questions answered
puts client_information

#convert data to appropriate type

#ask user if they want to update or change
#if they do, ask for new value, update key

puts "Please review the information. Is there anything you'd like to change? If not, please enter none."
  changes = gets.chomp
    if changes == "yes"
      puts "Which key would you like to change"
      key_change = gets.chomp
      puts "What would you like to change it to?"
      value_change = gets.chomp
      client_information[key_change.to_sym] = value_change
    else
      puts "Thanks for your information!"
    end

puts client_information
#print latest version
