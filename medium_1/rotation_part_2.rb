=begin
Problem

Rotation (Part 2)

Write a method that can rotate the last n digits of a number.

Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.

  Input(s): 2 numbers (num and then n for number to digits on the right to rotate)
  Output(s): New number (input num w/rightmost n digits rotated)
  
  Explicit Rules:
    Using the second argument as the number of digits to rotate, rotate those digits and then return the new number with the leftmost digits still in place
    If n == 1, return the original number
  Implicit Rules:
  
  Questions?

  Notes/Thoughts
  
Examples/Test Cases

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

Data Structures

Array

Algorithms

Return the input num if n == 1
Convert the number to an array of digits and split the left and right digits
  Invoke #digits on the number, slice 0...n for left_side; slice n..-1 for right_side
Invoke #rotate_array on the right digits
Return the original left digits combined with the now-rotated right digits in numeric form

=end
def rotate_array(arr)
  new_arr = arr.dup
  
  front_item = new_arr.shift
  new_arr.push(front_item)
  
  new_arr
end

def rotate_rightmost_digits(num, rotate_length)
  
  individual_digits = num.digits.reverse
  middle_index = individual_digits.length - rotate_length
  
  left_digits, right_digits = individual_digits[0...middle_index], individual_digits[middle_index..-1]
  
  right_digits = rotate_array(right_digits)
  
  (left_digits << right_digits).join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917