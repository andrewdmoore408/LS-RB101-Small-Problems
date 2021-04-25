=begin
Problem

Reversed Arrays (Part 2)

Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.

  Input(s): Array
  Output(s): New array (with same elements as input but in reverse order)
  
  Explicit Rules:
    Return a new array with the elements from the original reversed
    The original input must not be modified
    Don't use reverse(!) methods or the method I wrote for part 1
  Implicit Rules:
    Return an empty array if that's what's input
  
  Questions?

  Notes/Thoughts
  
  Could I use a local variable for the index and modify it within the map block?
  Could also use #each to iterate through the input array and #unshift to build the new array in reverse order--but I used #each #prepend last time so that would basically be the same...
  
Examples/Test Cases

reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true

Data Structures

Array

Algorithms

Go through the original array backward and build the new array forward using those elements

=end

# def reverse(arr)
#   reverse_index = 0
  
#   reversed_arr = arr.map do |_|
#     reverse_index -= 1
#     arr[reverse_index]
#   end
# end

# p reverse([1,2,3,4]) == [4,3,2,1]          # => true
# p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# p reverse(['abc']) == ['abc']              # => true
# p reverse([]) == []                        # => true

# list = [1, 3, 2]                      # => [1, 3, 2]
# new_list = reverse(list)              # => [2, 3, 1]
# p list.object_id != new_list.object_id  # => true
# p list == [1, 3, 2]                     # => true
# p new_list == [2, 3, 1]                 # => true


# Further exploration
def reverse(arr)
  arr.reduce([]) { |rev_arr, elem| rev_arr.unshift(elem) }
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true