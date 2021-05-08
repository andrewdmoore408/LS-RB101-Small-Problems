=begin
Problem

Rotation (Part 3)

If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

  Input(s): Integer
  Output(s): Integer after "maximum rotation"
  
  Explicit Rules:
    Beginning at leftmost index, rotate the digits (so the first element is moved to the end), then repeat through each index, keeping the leftmost digits in place
    Don't need to worry about multiple 0s (leading 0 will be dropped by Ruby)
  Implicit Rules:
    If input is one digit, output will be the same number
  
  Questions?

  Notes/Thoughts
  
  Loop through each index, invoke #rotate_rightmost_digits beginning at each index
  
Examples/Test Cases

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

Data Structures

Array

Algorithms

Invoke rotate_rightmost_digits for all digits, then length of digits - 1, then length of digits - 2, etc...

Invoke #times method with/digits length as an argument
  Reassign the array slice from current number..-1 to the value of rotate_rightmost_digits (num, length - current number)

=end

def rotate_array(arr)
  new_arr = arr.dup
  
  front_item = new_arr.shift
  new_arr.push(front_item)
  
  new_arr
end

def rotate_rightmost_digits(num_string, rotate_length)
  
  individual_digits = num_string.chars
  middle_index = individual_digits.length - rotate_length
  
  left_digits, right_digits = individual_digits[0...middle_index], individual_digits[middle_index..-1]
  
  right_digits = rotate_array(right_digits)
  
  (left_digits << right_digits).flatten
end

def max_rotation(num)
  num_digits = num.to_s.chars
  
  num_digits.length.times do |i|
    
    #binding.pry
    num_digits = rotate_rightmost_digits(num_digits.join, num_digits.length - i)
    #binding.pry
  end
  
  num_digits.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845