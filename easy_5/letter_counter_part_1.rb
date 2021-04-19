=begin

Letter Counter (Part 1)

Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

PROBLEM
  INPUT(S): String
  OUTPUT(S): Hash with number of letters in a word as keys and number of words with that number of letters as values
  
  EXPLICIT RULES:
    All characters together and not separated by spaces count as a word
    
  IMPLICIT RULES:
    Return an empty hash for an empty string
    Count special characters as part of the word
  
  QUESTIONS?
  
EXAMPLES/TEST CASES

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

DATA STRUCTURES

Strings and Hashes

ALGORITHMS

Split the string into an array of words
Initialize an empty hash to contain the results
For each word in the string:
  Count the number of letters in the word
  Increment the count of words with that number of letters (or add that key => 1 if it's the first word with that length).
Return the results hash

=end

def word_sizes(string)

  word_length_counts = {}
  
  string.split.each do |word|
    if word_length_counts.key?(word.length)
      word_length_counts[word.length] += 1
    else
      word_length_counts[word.length] = 1
    end
  end
  
  word_length_counts
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}