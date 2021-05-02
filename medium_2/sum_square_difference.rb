=begin
Problem

Sum Square - Square Sum

Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.
  Input(s): Positive integer n (number to count up to)
  Output(s): Number (difference between square of (sum: first n positive ints) and sum of (square: first n positive ints)
  
  Explicit Rules:
    Beginning at 1 and going up to the input num n, add each number together and square that. Then add the square of each of the same numbers together. Then take the difference.
    Input will be positive
  Implicit Rules:
    Return 0 if input is 1 (should be automatic with the math)
  
  Questions?

  Notes/Thoughts
  
  Add each number from 1 to input together: square this sum
  Square each number from 1 to input together: sum them
  Subtract the squared sum from the summed squares
  
Examples/Test Cases

sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

Data Structures

n/a
Perhaps array?

Algorithms

Need to add the range from 1..n and then after square it
Need to square each num in that range and add them together

Initialize two local variables to 0: squared_sum and summed_squares
Invoke #each on the range from 1..n
  Reassign the squared_sum to its current value + current num
  Reassign the summed_squares to its current value + (current num ** 2)
Square the squared_sum variable and reassign it to the square result
Return the difference between the squared sum and sum of squares

=end

def sum_square_difference(n)
  squared_sum = 0
  summed_squares = 0
  
  (1..n).each do |x|
    squared_sum += x
    summed_squares += (x ** 2)
  end
  
  squared_sum **= 2
  
  squared_sum - summed_squares
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150