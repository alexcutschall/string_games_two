require 'pry'
class Palindrome
  def initialize(word)
    @word = word
  end

  def remove_spaces(word = @word)
    @word = word.split.join
  end

  def palindrome?(word = @word)
    word.each_char.with_index do |char, index|
      return false if char[index] != char[index -1]
      char[index += 1]
      char[index -= 1]
    end
  end
end

palindrome = Palindrome.new("madam")
puts palindrome.palindrome?
