# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     words + "!!!" + " :)"
#   end
# end

# puts Shout.yell_angrily("I am mad")
# puts Shout.yell_happily("I am happy")

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + "!!!" + " :)"
  end
end

class Sports
  include Shout
end

class Concert
  include Shout
end

sports_fans = Sports.new
p sports_fans.yell_angrily("Come on Ref")

concert_goers = Concert.new
p concert_goers.yell_happily("I love you")
