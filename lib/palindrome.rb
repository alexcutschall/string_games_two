require 'pry'
class Palindrome
  def initialize(word)
    @word = word
  end

  def palindrome(word = @word)
    word.each_char.with_index do |char, index|
      return false if char != word[-1 - index]
    end
    true
  end
end

palindrome = Palindrome.new("copcar")
palindrome_2 = Palindrome.new("racecar")
palindrome_3 = Palindrome.new("nurses run")
puts palindrome.palindrome
puts palindrome_2.palindrome
puts palindrome_3.palindrome
