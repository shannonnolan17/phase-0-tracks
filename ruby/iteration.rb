def give_treat
  puts "Good doggie! here's a treat"
  yield("butters", "emma")
end

give_treat {|butters, emma| puts "Now sit #{butters} and #{emma}"}

#RELEASE 1 array each
fruits = ["apples", "oranges", "peaches", "strawberries"]
new_fruit = []

fruits.each do |fruits|
  puts fruits
  new_fruit << fruits.upcase
end

p new_fruit
#RELEASE 1 array map
fruits = ["apples", "oranges", "peaches", "strawberries"]
puts "original data:"
p fruits

fruits.map! do |fruits|
  puts fruits.upcase
end

#RELEASE 1 hash each
domains = {
  "de" => "Germany",
  "sk" => "Slovakia",
  "hu" => "Hungary",
  "us" => "United States",
  "no" => "Norway"
  }

domains.each do |domain, country|
  puts domain.reverse
  puts country.reverse
end

#RELEASE 2 delete_if array
numbers = [1, 2, 3, 4, 5, 6]
numbers.delete_if {|number| number < 5}
puts numbers
#RELEASE 2 delete_if hash
numbers = {
  "one" => 1,
  "two" => 2,
  "three" => 3,
  "four" => 4,
  "five" => 5,
  "six" => 6,
}

numbers.delete_if {|key, value| value > 5}
puts numbers

#RELEASE 2 keep_if array

numbers = [1, 2, 3, 4, 5, 6]
numbers.keep_if {|number| number < 5}
puts numbers
#RELEASE 2 keep_if hash
numbers = {
  "one" => 1,
  "two" => 2,
  "three" => 3,
  "four" => 4,
  "five" => 5,
  "six" => 6,
}

numbers.keep_if{|key, value| value >5}
puts numbers

#RELEASE 2 select array
numbers = [1, 2, 3, 4, 5, 6]
result = numbers.select do |number| number < 5
end

puts result

#RELEASE 2 select hash
numbers = {
  "one" => 1,
  "two" => 2,
  "three" => 3,
  "four" => 4,
  "five" => 5,
  "six" => 6,
}

result = numbers.select {|key, value| value > 5}

puts result
#RELEASE 2 drop_while
numbers = [1, 2, 3, 4, 5, 6]
result = numbers.drop_while do |number| number < 5
end

puts result