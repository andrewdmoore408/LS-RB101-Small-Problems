=begin
Problem

Double Char (Part 1)

Write a method that takes a string, and returns a new string in which every character is doubled.

  Input(s): String
  Output(s): New string (input with every char doubled)
  
  Explicit Rules:
    Return a new string which contains the original string with every character appearing twice (in place, e.g. "abc" becomes "aabbcc"
  Implicit Rules:
    Case-sensitive
  
  Questions?

  Notes/Thoughts
  
Examples/Test Cases

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

Data Structures

String
Array

Algorithms

Go through the original string and create a new string where each character from the original appears twice instead of once

Convert the string to an array of its chars
Initialize a new string to the return value of:
  Invoking #map on the array of chars and return the current char twice 
Join the array and return this string

=end

def repeater(str)
  str.chars.map { |char| "#{char}#{char}" }.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''