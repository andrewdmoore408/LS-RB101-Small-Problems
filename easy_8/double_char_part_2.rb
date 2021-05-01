=begin
Problem

Double Char (Part 2)

Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

  Input(s): string
  Output(s): new string (all consonants doubled in place)
  
  Explicit Rules:
    Return a new string with the same value as input except consonants are doubled in place
    Vowels and non-letters should not be doubled
  Implicit Rules:
    Empty string should be returned if input is empty string
  
  Questions?

  Notes/Thoughts
  
Examples/Test Cases

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

Data Structures

String
Array (of chars)

Algorithms

Initialize a string to hold all letters
Remove the vowels from that reference string (now only has consonants)

Invoke #map on the array of chars from input
  If char is a consonant, repeat it
  If not, just return the original chars
Return the return value of #map

=end

def double_consonants(str)
  consonants = ("a".."z").to_a.join.gsub(/[aeiou]/i, "").chars
  
  str.chars.map do |char|
    if consonants.include?(char.downcase)
      char * 2
    else
      char
    end
  end.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""