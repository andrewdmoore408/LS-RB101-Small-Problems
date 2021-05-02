=begin
Problem

Double Doubles

A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

  Input(s): Number
  Output(s): Number (twice the input number unless input is a "double number," in which case return the same number as input)
  
  Explicit Rules:
    "Double numbers" have the same digits on the first and left half and an even number of digits
    Return the input number multiplied by 2 unless input is a double number, then return the input number
  Implicit Rules:
  
  Questions?

  Notes/Thoughts
  
  The work here is in calculating whether or not a number is a double number
  
Examples/Test Cases

twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

Data Structures

String

Algorithms

Helper method: is a number a double number? (takes num as an arg)
  Convert the number to a string
  Split it into halves using its length and String#slice / []
  Return true if the halves are equal, else false
  
Main method:
  If input num is a double number, return the same number
  Else return the input * 2

=end

def double_number?(num)
  num_str = num.to_s
  
  return false if num_str.length.odd?
  
  half_length = num_str.length / 2
  
  left_half, right_half = [num_str[0, half_length], num_str[half_length, half_length]]
  left_half == right_half
end

def twice(num)
  double_number?(num) ? num : num * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10