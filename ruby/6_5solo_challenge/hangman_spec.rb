require_relative 'hangman'

describe Hangman do
  let(:new_game) {Hangman.new("lawn")}
  it "sets word upon initialization" do
    expect(new_game.what_is_the_word.to eq "lawn")
  end

  it "checks if letter is in word" do
    new_game.guess("l")
    expect(new_game.what_is_the_word).to eq "l___"
  end
end