=begin
Problem

Word to Digit

Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

  Input(s): String (a sentence)
  Output(s): The same string with spelled-out numbers replaced with digits
  
  Explicit Rules:
    Return the same string
    Replace words like "zero" and "one" with their numeric digit equivalents
  Implicit Rules:
    Words are space or period delimited and digits should replace them in place without altering adjacent chars.
    Need to deal with period edge case
  
  Questions?

  Notes/Thoughts
  Initialize an array of strings with indexes matching the words to use for replacements
  
Examples/Test Cases

word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

Data Structures

String
Array

Algorithms

Initialize an array of strings of the numeric words with each word matching its digit in index (index 0 is the word "zero", index 1 is "one", etc.)

Invoke #split and then #map to go through each word in the string. If a match in the array is found, change the word to that digit (using Array#index), else keep the same word.
Return the transformed array

=end

def word_to_digit(str)
  number_words = { "zero" => 0, "one" => 1,  "two" => 2, "three" => 3,
                   "four" => 4,  "five" => 5,  "six" => 6,  "seven" => 7,
                   "eight" => 8, "nine" => 9 }
  
  number_words.each do |word, digit|
    str.gsub!(word, digit.to_s)
  end
  
  str
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'