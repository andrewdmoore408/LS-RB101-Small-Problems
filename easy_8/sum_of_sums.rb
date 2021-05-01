=begin
Problem

Sum of Sums

Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.

  Input(s): array (of numbers)
  Output(s): number (sum of all possible subarrays which include the first element)
  
  Explicit Rules:
    Array will always have at least one number
    Sum all the sums of every subarray which includes the first element
  Implicit Rules:
    Numbers are all integers
  
  Questions?

  Notes/Thoughts
  
  Summing is straightforward; bigger thing to consider is getting each combination of elements that includes the first element
  
Examples/Test Cases

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

Data Structures

Array

Algorithms

Calculate each possible subarray which includes the first element
Sum up the elements of each subarray
Sum up those sums to get the total, and return that

Use #first(x) to get first x elements of the array

=end

def sum_of_sums(arr)
  arr.map.with_index { |_, index| arr.first(index+1).sum }.sum 
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35