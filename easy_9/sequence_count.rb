=begin
Problem

Sequence Count

Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

  Input(s): 2 integers (count, starting number of sequence)
  Output(s): Array of numbers (count # of elements, multiples of the starting number with the starting number being first)
  
  Explicit Rules:
    Return an array as long as the first argument made up of multiples of the second argument
    Count (first arg) will always be >= 0
    Starting num (second arg) could be any num
    Return [] if count is 0
  Implicit Rules:
  
  Questions?

  Notes/Thoughts
  
  Use #upto and multiply starting num by the current iteration num
  
Examples/Test Cases

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

Data Structures

Array

Algorithms

Return [] if count == 0
Initialize an empty array to hold the results
Invoke #upto on 1 passing count in as an arg
  For each iteration, add the starting_num * iteration_num to the array
Return the array

=end

def sequence(count, num_to_multiply)
  return [] if count == 0
  
  result = []
  
  1.upto(count) do |x|
    result << num_to_multiply * x
  end
  
  result
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []