=begin
Problem

Capitalize Words

Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

  Input(s): String
  Output(s): New string (same values as input—first character of each word upcased, all others downcased)
  
  Explicit Rules:
    New string returned should have all first letters in word capitalized, all other letters lowercase
  Implicit Rules:
    Letters should be capitalized if and only if they're the first non-whitespace character after whitespace
  
  Questions?

  Notes/Thoughts
  
Examples/Test Cases

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

Data Structures

String
Array

Algorithms

Split the string into its individual words (delimited by spaces)
For each word:
  Capitalize the first character, ensure all other characters are lowercase (or not letters)
Combine the newly formatted words into a new string and return it

=end

def word_cap(str)
  words = str.split
  
  words.each do |word|
    word[0] = word[0].upcase
    word[1..-1] = word[1..-1].downcase
  end
  
  words.join(" ")
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'