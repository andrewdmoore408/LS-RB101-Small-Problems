=begin
Problem

Multiply All Pairs

Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.

  Input(s): 2 arrays (lists of numbers)
  Output(s): array 
  
  Explicit Rules:
    Return a sorted array with the product of every pair of numbers between the two arrays
    Neither array will be empty
  Implicit Rules:
  
  Questions?
  
  Array#product

  Notes/Thoughts
  
Examples/Test Cases

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

Data Structures

Arrays

Algorithms

Need to get all possible pairs from the two arrays
Multiply each pair together
And finally sort it

Invoke #product to get all possible pairs as subarrays and store them
Invoke map to multiply all subarrays together and store that result
Flatten and sort the array, then return it

=end

def multiply_all_pairs(arr1, arr2)
  pairs = arr1.product(arr2)
  
  products = pairs.map do |pair|
    pair.reduce(&:*)
  end
  
  products.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]