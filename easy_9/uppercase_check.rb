=begin
Problem

Uppercase Check

Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.

  Input(s): String
  Output(s): Boolean (whether or not all letters in the input are uppercase)
  
  Explicit Rules:
    Return true if all letters are upper; else false
    Ignore non-alpha chars
  Implicit Rules:
    Return true for empty string
  
  Questions?

  Notes/Thoughts
  
  String#upcase will return the original string if not a letter and if it's an uppercase letter; can use that to compare against the original char
  
Examples/Test Cases

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

Data Structures

String
Array (of chars)

Algorithms

Convert the string into an array of its chars
Iterate through each char
  If the char equals the char.upcase, continue
  If not, return false

=end

def uppercase?(str)
  str.chars.each { |char| return false unless char.upcase == char }
  
  true
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true