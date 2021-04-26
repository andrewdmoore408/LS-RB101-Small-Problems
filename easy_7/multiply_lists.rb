=begin
Problem

Multiply Lists

Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

  Input(s): 2 arrays of ints
  Output(s): A new array (same length as arguments; each ele, the product of the nums at that index in each arg)
  
  Explicit Rules:
    Return a new array
    Arrays will be the same size
    Multiply the elements at each index and add that product to the new array
  Implicit Rules:
  
  Questions?

  Notes/Thoughts
  
Examples/Test Cases

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

Data Structures

Arrays

Algorithms

Initialize a result array
Loop through each index of the two arrays
  Multiple the elems at the current index
  Add the product to the result array
Return the result array

=end

def multiply_list(arr1, arr2)
  products = []
  
  i = 0
  
  while i < arr1.length
    products << (arr1[i] * arr2[i])
    i += 1
  end
  
  products
end

def multiply_list(arr1, arr2)
  arr.zip(arr2) { }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]