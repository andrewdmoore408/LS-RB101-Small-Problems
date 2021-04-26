=begin
Problem

Combine Two Lists

Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.

  Input(s): 2 arrays
  Output(s): an array (new array featuring the elements from the two input arrays in alternating order)
  
  Explicit Rules:
    Combine the elements from the two arrays in alternating order
  Implicit Rules:
  
  Questions?

  Notes/Thoughts
  
Examples/Test Cases

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

Data Structures

Arrays

Algorithms

Iterate through the two arrays and add the element at one index from one, than the other, to a new array
Return that array

=end

# def interleave(first_arr, second_arr)
#   index = 0
#   interleaved = []
  
#   while index < first_arr.length
#     interleaved << [first_arr[index], second_arr[index]]
#     index += 1
#   end
  
#   interleaved.flatten
# end

# Further exploration: using Array#zip
def interleave(first_arr, second_arr)
  interleaved = first_arr.zip(second_arr)
  interleaved.flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']