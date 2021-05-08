=begin
Problem

Rotation (Part 1)

Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.
  
  Input(s): Array
  Output(s): New array (first element of input arr moved to last element)
  
  Explicit Rules:
    Don't modify the original array
    Return a new array with the previously first element now at the end
  Implicit Rules:
    Elements may be numbers or letters/strings
    Value of collection will be the same if it only has one element
    
  Questions?
  
    Do I need to make a deep copy...?

  Notes/Thoughts
  
Examples/Test Cases

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

Data Structures

Array

Algorithms

Initialize a local variable to a new array, duplicating the input
Invoke #shift on the new array and then #push to move the first element to the end
Return this new array

=end

def rotate_array(arr)
  new_arr = arr.dup
  
  front_item = new_arr.shift
  new_arr.push(front_item)
  
  new_arr
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

# Further exploration: Add ability to rotate strings and integers as well
# For strings: split it up into an array of chars, use the same method, then join the array
# For integers: split it up into an array of its digits, use the method to move a digit to the end, then combine them again into an int

def rotate(obj)
  if obj.class == Array
    rotate_array(obj)
  elsif obj.class == String
    rotate_array(obj.chars).join
  elsif obj.class == Integer
    rotate_array(obj.digits.reverse).join.to_i
  else
    "This type of object can't be rotated"
  end
end

p rotate('Phrixos') == "hrixosP"
p rotate(54321) == 43215