=begin

ddaaiillyy ddoouubbllee

Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

PROBLEM
  INPUT(S): String (with repeating characters
  OUTPUT(S): New string (with no repeating characters)
  
  EXPLICIT RULES:
    Return a new string, not the original
    Replace repeated characters with just one of that character
    Don't use String#squeeze or #squeeze!
  IMPLICIT RULES:
    Return an empty string if input is an empty string
  
  QUESTIONS?
  
EXAMPLES/TEST CASES

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

DATA STRUCTURES

Strings, characters, arrays

ALGORITHMS
Initialize an empty result string
Go through each character in the string by its char index
If it doesn't match the previous index, add the char to the result string
Return the result string

=end

def crunch(string)
  crunched = ""
  
  string.chars.each_with_index do |char, i|
    if i == 0
      crunched << char
      next
    end
    
    crunched << char unless string[i] == string[i-1]
  end
  
  crunched
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''