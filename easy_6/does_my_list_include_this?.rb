=begin
Problem

Does My List Include This?

Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.

  Input(s): array; needle to find (search value)
  Output(s): Boolean (whether or not the search value was found in the array)
  
  Explicit Rules:
    Accepts an array and search value as arguments
    Return true if the search value is found; else false
  Implicit Rules:
    If the input array is empty, return false
  
  Questions?

  Notes/Thoughts
  
  Could use count
  Select to check size or arr == search item
  iterate through with each and return true if a match
  
Examples/Test Cases

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

Data Structures

Array

Algorithms

return false if arr.empty? (needed?may be unnecessary)

Return true if invoking #count on the array is greater than zero when the search item is passed in as an arg

=end

def include?(arr, searching_for)
  arr.count(searching_for) > 0
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false