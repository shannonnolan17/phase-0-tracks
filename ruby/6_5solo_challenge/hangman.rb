class Hangman

attr_accessor :word
attr_accessor :current_word

def initialize(word)
  puts "Initializing new game..."
  @word = word
  @guesses = @word.length
  @current_word = "_" * (word.length)
end

def what_is_the_word
  @word
end

def set_current_word(word)
    @current_word=word
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
puts "Welcome to Hangman!"
puts "Player 1 please enter a word:"
word = gets.chomp
game = Hangman.new(word)

guessed_letters = []
attempts = 0
while attempts < word.length + 1
  puts "Player 2 please enter a letter!"
  guess_letter = gets.chomp

    if guessed_letters.include? guess_letter
      puts "Whoops! You already tried that letter! Try again!"
      attempts -= 1
    end
  guessed_letters << guess_letter
  game.guess(guess_letter)
  attempts += 1
end
game.game_over







