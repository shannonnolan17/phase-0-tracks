require_relative 'hangman'

describe Hangman do
  let(:new_game) {Hangman.new("lawn")}
  it "sets word upon initialization" do
    expect(Hangman.new("lawn").to eq)
  it "checks if letter is in word" do
    expect(Hangman.guess("l")).to eq "l___"
  end
end