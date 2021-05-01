=begin
Problem

All Substrings

Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

You may (and should) use the leading_substrings method you wrote in the previous exercise:

  Input(s): string
  Output(s): array of strings (all possible substrings from input string)
  
  Explicit Rules:
    Find all possible substrings for the input
    Return them in an array ordered from shortest to longest and also from the beginning of the input to the end of the input
  Implicit Rules:
  
  Questions?

  Notes/Thoughts
  
  Slice the string from 0..-1, 1..-1, etc. and invoke leading_substrings
  
Examples/Test Cases

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

Data Structures

String
Arrays

Algorithms

Initialize a substrings array to an empty array--this will hold the results
Iterate through the given string index by index
  Invoke leading_substrings on a new string holding the values of the input string from the current index in the loop to the end of the string
  Append the returned array from #leading_substrings to the substrings array
Flatten the substrings array and then return it

=end

def leading_substrings(str)
  
  substrings = []
  
  str.each_char.map.with_index do |_, index|
    substrings << str[0..index]
  end
  
  substrings
end

def substrings(str)
  substrings = []
  
  0.upto(str.length - 1) do |index|
    substrings << leading_substrings(str[index..-1])
  end
  
  substrings.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]