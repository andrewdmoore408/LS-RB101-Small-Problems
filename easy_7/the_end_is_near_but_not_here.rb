=begin
Problem

The End Is Near But Not Here

Write a method that returns the next to last word in the String passed to it as an argument.

Words are any sequence of non-blank characters.

You may assume that the input String will always contain at least two words.

  Input(s): String
  Output(s): string (next to last "word" from the input string)
  
  Explicit Rules:
    Words are a sequence of non-spaces
    Return the penultimate word from the input
    Input will always be valid
  Implicit Rules:
  
  Questions?

  Notes/Thoughts
  
Examples/Test Cases

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

Data Structures

String
Arrays

Algorithms

Divide the string into words
Return the second to last word

=end

def penultimate(string)
  string.split.last(2).first
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'