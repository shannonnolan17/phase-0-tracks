require_relative 'hangman_program'

describe Hangman do
  let (:Hangman){Hangman.new}
  it "Takes a word as parameter in initialization" do
    expect(Hangman.initialize("rover")) to eq rover
  end