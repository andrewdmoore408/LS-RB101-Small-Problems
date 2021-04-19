=begin

Letter Swap

Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

PROBLEM
  INPUT(S): String of words
  OUTPUT(S): New string of words with first/last letter of each word swapped
  
  EXPLICIT RULES:
    String will always have at least one word
    Words will always have at least one letter
    Nothing in input except words and spaces
    Need to swap first and last letter of every word and return that in a new string
    
  IMPLICIT RULES:
    Don't need to worry about/convert case.
  
  QUESTIONS?
  
EXAMPLES/TEST CASES

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

DATA STRUCTURES

Strings; array of words

ALGORITHMS

Split the string into an array of its words
Iterate through each word
  If one letter, next word
  Otherwise
    Set a temp variable to point to a new copy of the first char in the word
    Replace the first letter with the last letter
    Use the temp variable to replace the last letter with what used to be the first letter
Join the array of words and return it

=end

def swap(phrase)
  words = phrase.split
  
  words.each do |word|
    next if word.size < 2
    
    first_letter = word[0]
    word[0] = word[-1]
    word[-1] = first_letter # Could have used multiple assignment: word[0], word[-1] = word[-1], word[0]
  end
  
  words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

# Further exploration

# Using just the first and last letter as arguments to the swap_first_last_characters
# would not work because now the original word isn't being passed into the method as
# an argument. Without the original word being passed into the method, there's no way
# for this method to mutate the actual word itself.