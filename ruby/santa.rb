class Santa

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
    @age = 0
  end

end


# santa = Santa.new("male", "white")
# santa.eat_milk_and_cookies("Chocolate Chip Cookie")

genders = ["male", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
santas = []

genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
  puts "There are #{santas.length} Santas!"
end

santas.each do |santa|
  santa.speak
end

##STOPPED AT RELEASE 2



