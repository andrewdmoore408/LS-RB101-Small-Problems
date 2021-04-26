=begin
Problem

Staggered Caps (Part 1)

Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

  Input(s): string
  Output(s): new string (with alternating upper/lower case letters)
  
  Explicit Rules:
    Return a new string
    Alternate between upper/lowercase--do not modify non-letters, but count them for alternating case purposes
  Implicit Rules:
  
  Questions?
  
  Always start with one case? (Begin with uppercase)

  Notes/Thoughts
  
Examples/Test Cases

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

Data Structures

String

Algorithms

Go through the string char by char
If index is even, try to convert to uppercase
If index is odd, try to convert to downcase

Assign the return value below to a local variable
  Invoke #map.with_index to transform the input string
  If index is even, use upcase; if odd, use downcase
Invoke join on the local variable and return that

=end

def staggered_case(str)
  staggered_str = str.chars.map.with_index do |char, index|
    if index.even?
      char.upcase
    else
      char.downcase
    end
  end
  
  staggered_str.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'