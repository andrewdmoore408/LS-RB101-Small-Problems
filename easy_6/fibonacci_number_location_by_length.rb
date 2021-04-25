=begin

Fibonacci Number Location By Length

The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.

Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

Problem
  Input(s): integer (number of digits for fibonacci number to reach)
  Output(s): integer (index of the first fibo num which contains the input # of digits)
  
  Explicit Rules:
    Return the index (1-index) of the first fibo num that has the input # of digits
  Implicit Rules:
  
  Questions?
    Edge cases?

  Notes/Thoughts
    Remember that the index is being returned, not the number itself!
    Need to calculate fibo nums and also check for their digit length
    1-index, not 0-index like usual
  
Examples/Test Cases

find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

Data Structures

Array

Algorithms

Initialize a fibo num array to [1, 1]

Generate fibonacci numbers iteratively by adding the previous 2 elements together
  Add the new num to the array
  Check new num's length in digits
    If its length in digits equals input num, return the length of the fibo array
    Else continue

=end

def find_fibonacci_index_by_length(length)
  fibonacci_nums = [1, 1]
  
  loop do
    fibonacci_nums << (fibonacci_nums[fibonacci_nums.length - 2] + fibonacci_nums.last)

    return fibonacci_nums.length if fibonacci_nums.last.digits.length == length
  end
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847