=begin
Problem

Halvsies

Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

  Input(s): array
  Output(s): a new array with 2 subarrays (containing the first half of the original in one subarray, and the second half in the other)
  
  Explicit Rules:
    Divide the original array down the middle and add half to one subarray and the other half to another. Combine these new subarrays into a new array and return that
    If an odd num of elements, put the extra element in the first subarray
  Implicit Rules:
    Return nested empty subarrays if input is an empty array
    
  
  Questions?

  Notes/Thoughts
  
  Can I use partition.with_index ? (Yes!)
  
Examples/Test Cases

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

Data Structures

Array

Algorithms

Calculate the middle index, accounting for both odd and even numbers of elements
  For even numbers: arr.length / 2
  For odd numbers: (arr.length / 2) + 1
Invoke partition.with_index to divide the array into one half of the indexes and the other half

=end

def halvsies(arr)
  middle_index = arr.length.even? ? arr.length / 2 : (arr.length / 2) + 1
  
  arr.partition.with_index do |_, index|
    index < middle_index
  end
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

# Further exploration: The LS solution divides by 2.0 so that the result will be a float; 
# in the case of an array with odd length, it would be x.5, so that the call to Number#ceil
# will round it up to the next integer. This ensures that the extra element will be in the
# first array as the problem calls for.