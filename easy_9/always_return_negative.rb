=begin
Problem

Always Return Negative

Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. If the number is 0 or negative, return the original number.

  Input(s): Number
  Output(s): Number (negative equivalent of input if it was positive, else same as input)
  
  Explicit Rules:
    The number returned will always be either 0 or negative
    Use negation for the input if positive, else return the same as input
  Implicit Rules:
  
  Questions?

  Notes/Thoughts
  
Examples/Test Cases

negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

Data Structures

Number

Algorithms

Determine if the input is positive
  If so, negate it and return it
  Else return it as is

=end

def negative(num)
  num.positive? ? -num : num
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby