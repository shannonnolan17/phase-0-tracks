# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Give our ruby file access to another ruby file within same directory.
#
require_relative 'state_data'

class VirusPredictor

# Initialize method, runs with every new instance. Takes three parameters.
  def initialize(state)
    @state = state
    @population = STATE_DATA[state][:population]
    @population_density = STATE_DATA[state][:population_density]
  end


# States results of other methods (predicted_deaths and speed_of_spread).
  def virus_effects
    predicted_deaths
    speed_of_spread
    print "#{@state} will lose #{@number_of_deaths} people in this outbreak and will spread across the state in #{@speed} months.\n\n"
  end

  private

# Calculating deaths based upon population and population density. Prints number in statement.

  def predicted_deaths
    # predicted deaths is solely based on population density
    rate =
     if @population_density >= 200
       0.4
     elsif @population_density >= 150
       0.3
     elsif @population_density >= 100
       0.2
     elsif @population_density >= 50
       0.1
     else
       0.05
     end

    @number_of_deaths = (@population * rate).floor

  end


# Calculates speed of spread based upon just population density of the given state. Prints the number in a statement.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    @speed =
     if @population_density >= 200
       0.5
     elsif @population_density >= 150
       1
     elsif @population_density >= 100
       1.5
     elsif @population_density >= 50
       2
     else
       2.5
     end

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each { |state, data|VirusPredictor.new(state).virus_effects }


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
  #The first syntax is the rocket or => and the second is the :. The : is better for storing items because the computer only has to store it once compared to the => which stores it everytime.
# What does require_relative do? How is it different from require?
  #Require_relative allows us to access a file with code in the same directory so we can use it in another file with code.
# What are some ways to iterate through a hash?
  #You can use .times |key, value| or .each |key,value|.
# When refactoring virus_effects, what stood out to you about the variables, if anything?
  #They were uncessary and repeated. We didn't need to pass any arguments into the two other methods because they are attributes that can be accessed in the class already. We did not need to pass anything outside of the class.
# What concept did you most solidify in this challenge?
  #Refactoring. I feel so much better about refactoring and about how to go about refactoring. How you should look at the umbrella items and go through your code for each one to find something you can change.