=begin
Problem


Multiplicative Average

Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

  Input(s): Array (of integers)
  Output(s): Number (float rounded to 3 decimal places)
  
  Explicit Rules:
    Multiply the elements of the array together, then divide by array length and round to 3 places
    Array will not be empty
  Implicit Rules:
  
  Questions?

  Notes/Thoughts
  
Examples/Test Cases

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

Data Structures

Array

Algorithms

Multiply all elements together and store that result
Divide the product by the number of elements in the array
Round the quotient to 3 decimal places and return it

=end

def show_multiplicative_average(arr)
  average = (arr.reduce(&:*)) / arr.length.to_f
  puts "The result is %0.3f" % average
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667