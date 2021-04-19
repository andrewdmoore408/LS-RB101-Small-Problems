=begin

Clean up the words

Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

PROBLEM
  INPUT(S): String (all lowercase characters, spaces, and special characters)
  OUTPUT(S): String with all special characters replaced by a (non-repeating) space
  
  EXPLICIT RULES:
    Returned string must have no special chars and one space where one or more special characters existed
    No more than one consecutive space
  IMPLICIT RULES:
    Special characters can be anywhere in the string, including in the beginning and end.
  
  QUESTIONS?
  
EXAMPLES/TEST CASES

cleanup("---what's my +*& line?") == ' what s my line '

DATA STRUCTURES

String

ALGORITHMS

Use gsub! to mutate the original string and replace all characters which are not lowercase letters with a space

=end

def cleanup(str)
  str.gsub!(/[^a-z]+/, ' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '

# Further exploration

# I wrote the regex version thinking from the description that we're supposed to mutate the original string. After briefing glancing at the staff solution, that doesn't appear to the be the case. Here's a version which returns a new string and doesn't use regex

# Algorithm

# Initialize an empty array to contain the result
# Go through the original string character by character (using #chars to make an array)
# If the character is a letter, push it to the array
# Otherwise, add a space if the last character isn't already a space
# Join the array into a string and return it

LETTERS = ('a'..'z').to_a

def cleanup(str)
  clean_chars = []
  
  str.chars.each do |char|

    if LETTERS.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' if clean_chars.last != ' '
    end
  end
  
  clean_chars.join
end

p cleanup("---what's my +*& line?") == ' what s my line '