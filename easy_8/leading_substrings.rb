=begin
Problem

Leading Substrings

Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

  Input(s): string
  Output(s): array (of substrings from the input)
  
  Explicit Rules:
    Find all substrings which begin at the beginning of input
    Return them all in an array, sorted by shortest length -> longest length
  Implicit Rules:
    If input is one character, that character should be returned
  
  Questions?

  Notes/Thoughts
  
Examples/Test Cases

leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

Data Structures

String
Array

Algorithms

Calculate all substrings which begin with first character of string
Store pointers to these substrings in a collection
Sort the collection by increasing length
Return the collection

Initialize an empty array (which will eventually point to substrings)
Invoke #each_char.map.with_index on the string to use the index as it moves forward through the string
Append the substring created by slicing the string from 0 to the current index to the result collection
Return the collection (will already be sorted)

=end

def leading_substrings(str)
  
  substrings = []
  
  str.each_char.map.with_index do |_, index|
    substrings << str[0..index]
  end
  
  substrings
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']