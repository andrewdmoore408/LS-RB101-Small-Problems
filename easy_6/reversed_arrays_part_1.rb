=begin

Reversed Arrays (Part 1)

Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

You may not use Array#reverse or Array#reverse!.

Note: for the test case list = ['abc'], we want to reverse the elements in the array. The array only has one element, a String, but we're not reversing the String itself, so the reverse! method call should return ['abc'].

Problem
  Input(s): array
  Output(s): same (mutated) array with element order reversed
  
  Explicit Rules:
    Modify the original array object so that the last element becomes first, second to last element becomes second, etc.
    Can't use Array#reverse(!) methods
    Element order is being reversed; the elements themselves are not being modified
  Implicit Rules:
    Return an empty array if that's the input
  
  Questions?

  Notes/Thoughts
  
  Could use two local variables as beginning/end index to keep track?
  Need to be careful not to overwrite elements and lose objects
  As long as the array itself isn't reassigned, I'll be mutating the array. 
  
Examples/Test Cases

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true

Data Structures

Array

Algorithms

Go through the input array backward and add each element to a temp array
Use map!.with_index to reassign each index to the element at the matching index of the temp array

=end

def reverse!(arr)
  temp_arr = []
  
  arr.each { |elem| temp_arr.prepend(elem) }
  
  arr.map!.with_index { |_, index| temp_arr[index] }
  
end

# arr = %w(a b c d)
# p reverse!(arr)

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true
