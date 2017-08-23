class Hangman

attr_accessor :word
attr_accessor :guesses
attr_accessor :current_word

def initialize(word)
  puts "Initializing new game..."
  @word = word
  @guesses = @word.length
  @current_word = "_" * (word.length)
end

def set_current_word(word)
    @current_word=word
end

def guesses_available
  @guesses = @word.length
end

def guess(guess_letter)
  @word.split("").each_with_index do |word_letter, index|
      if word_letter == guess_letter.downcase
        @current_word[index] = guess_letter.downcase
      end
    end
    p @current_word
end

def game_over
  if @current_word != @word
    puts "You lose!"
  else
    puts "You did it!"
  end
end
end
#-------------------------------------------------------------------
#USER INTERFACE

game = Hangman.new("unicorn")
word = "unicorn"
puts "Welcome to Hangman!"
counter = 0
while counter < word.length
puts "Please enter a letter! Type 'done' when finished!"
guess_letter = gets.chomp
game.guess(guess_letter)
counter += 1
end
game.game_over

# hangman = Hangman.new("genius")
# hangman.guess("g")
# hangman.guess("n")
# hangman.guess("u")
# hangman.guess("t")
# hangman.guess("e")
# hangman.game_over





