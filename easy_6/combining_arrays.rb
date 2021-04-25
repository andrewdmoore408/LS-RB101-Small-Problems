=begin
Problem

Combining Arrays

Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

  Input(s): Two arrays
  Output(s): A new array containing one copy each of all elements in both input arrays (no duplicates)
  
  Explicit Rules:
    Each element from the input arrays should be included in the new array, but only once
  Implicit Rules:
  
  Questions?
    Does order of elements matter? Not sure whether sorting/particular order is necessary

  Notes/Thoughts
  
Examples/Test Cases

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

Data Structures

Arrays

Algorithms

Add each element of the first array to a new array, then each element of the second array to the new array
Eliminate duplicates

Initialize an empty result arr
Iterate through the first arr and add each element, then the same for the second
Invoke #uniq to eliminate duplicate elements

=end

def merge(*arrs)
  combined_arr = []
  
  arrs.each do |arr|
    arr.each do |elem|
      combined_arr << elem
    end
  end
  
  combined_arr.uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]