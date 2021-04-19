=begin

Letter Counter (Part 2)

Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

PROBLEM
  INPUT(S): string
  OUTPUT(S): hash with number of letters in a word as keys and counts of words with that number of letters as values
  
  EXPLICIT RULES:
    Count only letters for the length of words; exclude numbers and special characters
  IMPLICIT RULES:
    Empty hash should be returned for an empty string
  
  QUESTIONS?
  
EXAMPLES/TEST CASES

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

DATA STRUCTURES

String and hash

ALGORITHMS

Initialize an empty hash and give it a default value of 0
For each word in the string
  Extract only the letters to a separate word
  Count the letters in this new letter-only word
  Increment the count of words with this length in the hash
Return the hash

=end

def word_sizes(string)

  word_length_counts = Hash.new(0)
  
  string.split.each do |word|
    
    alpha_only = word.gsub(/[^a-zA-Z]/, "")
    
    word_length_counts[alpha_only.size] += 1
  end
  
  word_length_counts
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}