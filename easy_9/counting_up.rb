=begin
Problem

Counting Up

Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater than 0.

  Input(s): Positive integer
  Output(s): Array of numbers (sequence from 1 up to input)
  
  Explicit Rules:
    Input will always be a positive integer
    Return an array of integers from 1 up to the input
  Implicit Rules:
  
  Questions?

  Notes/Thoughts
  
Examples/Test Cases

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

Data Structures

Array

Algorithms

Initialize an empty array
Invoke the #upto method from 1 up to the input num and add each integer to the array
Return the array

=end

def sequence(end_num)
  result = []
  
  if end_num.positive?
    1.upto(end_num) { |x| result << x }
  else
    1.downto(end_num) { |x| result << x }
  end
  
  result
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-5) == [1, 0, -1, -2, -3, -4, -5] # Additional test case for further exploration: handling negative numbers