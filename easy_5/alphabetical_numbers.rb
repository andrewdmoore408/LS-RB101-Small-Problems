=begin

Alphabetical Numbers

Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

PROBLEM
  INPUT(S): Array of integers (between 0-19 inclusive)
  OUTPUT(S): Array of the same numbers sorted based on the English spelling of the words for each number
  
  EXPLICIT RULES:
    Sort the array of integers based on the string sort of the English words which represent each number
  IMPLICIT RULES:
    N/A?
  
  QUESTIONS?
    Should a new array be returned? Or mutating the original?
  
EXAMPLES/TEST CASES

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

DATA STRUCTURES

Arrays; Hash

ALGORITHMS

Set a reference hash with numbers as keys and the spelling of the English word for that number as values
Sort the array by the spelling of the word instead of the actual numeric value

=end

NUMBERS_AS_WORDS = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen' }

def alphabetic_number_sort(arr)
  sorted_by_words = arr.sort_by { |num| NUMBERS_AS_WORDS[num] }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]