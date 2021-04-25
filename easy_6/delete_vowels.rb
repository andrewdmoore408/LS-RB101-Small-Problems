=begin

Delete vowels

Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

Problem
  Input(s): array (of strings)
  Output(s): array (of strings but with all vowels removed)
  
  Explicit Rules:
    Remove all vowels from each string in the input array of strings
  Implicit Rules:
    Case should remain the same as in the original strings
    
  Questions?
    Same array/initial strings? (Doesn't mention mutation/original strings in problem)
    Need to handle empty array? or string?

  Notes/Thoughts
    Can use gsub to replace vowels with an empty string
  
Examples/Test Cases

  p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
  p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
  p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

Data Structures

Arrays; strings

Algorithms

Initialize a result array
Iterate through input array
  For each element(string), use gsub to replace all vowels with an empty string
  Add the new, sans vowel string to the result array
Return result

=end

def remove_vowels(string_arr)
  no_vowels_result = []
  
  string_arr.each do |word|
    consonant_only_word = word.gsub(/[aeiou]/i, "")
    no_vowels_result << consonant_only_word
  end
  
  no_vowels_result
end

  p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
  p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
  p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']