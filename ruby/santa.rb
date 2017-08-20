class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def initialize (gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(0..140)
  end

  def celebrate_birthday
    @age + 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index("#{reindeer_name}")))
  end
end


# santa = Santa.new("male", "white")
# puts "This santa is #{santa.age} and their ethnicity is #{santa.ethnicity}."
# puts santa.celebrate_birthday
# puts santa.gender= "female"
# puts santa.get_mad_at("Vixen")
# santa.eat_milk_and_cookies("Chocolate Chip Cookie")

genders = ["male", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
santas = []
100.times do
santa = Santa.new(genders.sample, ethnicities.sample)
puts "This Santa's gender is #{santa.gender}, their age is #{santa.age}, and their ethnicity it #{santa.ethnicity}."
end
# genders.length.times do |i|
#   santas << Santa.new(genders[i], ethnicities[i])
#   puts "There are #{santas.length} Santas!"
# end

# santas.each do |santa|
#   santa.speak
# end





