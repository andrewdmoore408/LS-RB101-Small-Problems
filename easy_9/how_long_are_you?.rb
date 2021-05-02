=begin
Problem

How long are you?

Write a method that takes a string as an argument, and returns an Array that contains every word from the string, to which you have appended a space and the word length.

You may assume that words in the string are separated by exactly one space, and that any substring of non-space characters is a word.

  Input(s): String
  Output(s): Array of strings (each space-delimited word from the input with a space and word length appended)
  
  Explicit Rules:
    Split the input into an array of its words (space delimited)
    A space and the word length should be appended to each word
    Words will only be separated by spaces
  Implicit Rules:
    Return an empty array for empty string input
    Non-alpha chars are counted as part of the word and its length
  
  Questions?

  Notes/Thoughts
  
Examples/Test Cases

word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []

Data Structures

String
Array

Algorithms

Initialize an array to the value of each string in the input using String#split
Invoke #map on that array to return a new array which has each word with a space and its length appended to it
Return that array

=end

def word_lengths(str)
  words = str.split
  
  words.map { |word| word + " #{word.length}" }
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []