=begin
Problem

Get The Middle Character

Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

  Input(s): String (will be non-empty)
  Output(s): String of 1 or 2 characters (depending on input string's length)
  
  Explicit Rules:
    Return the center 1 or 2 characters from input
      1 if input's length is odd; 2 if even
  Implicit Rules:
  
  Questions?

  Notes/Thoughts
  
Examples/Test Cases

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

Data Structures

String

Algorithms

Determine whether input string length is odd or even
Find the center
Return 1 center char for odd; 2 center chars for even

Check input length for odd or even
If odd, divide length by 2 and use that quotient as the index to return 1 character using String#[]

If even, divide length by 2 and use that quotient as the end index and return the character at that index as well as the one before using String#[]

=end

def center_of(str)
  is_length_odd = str.length.odd?
  
  end_index = str.length / 2
  
  start_index = is_length_odd ? end_index : end_index - 1
  
  str[start_index..end_index]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'