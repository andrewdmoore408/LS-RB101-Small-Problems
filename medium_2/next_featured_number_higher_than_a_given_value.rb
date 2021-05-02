=begin
Problem

Next Featured Number Higher than a Given Value

A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Return an error message if there is no next featured number.

  Input(s): Integer
  Output(s): Integer (or error message)
  
  Explicit Rules:
    Need to return the next "featured number" higher than input
      Odd number; evenly divisible by 7; no repeated digits
    If not possible, return an error message
  Implicit Rules:
    Input will be positive
    If number has more than 10 digits, no more featured numbers
  
  Questions?

	Notes/Thoughts

  Digits: can invoke digits.uniq.length to see if it matches digits.length
  num % 7 == 0 ? (multiple of 7)
  num#odd?
  
Examples/Test Cases

featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

Data Structures

Array

Algorithms

Increment input by 1 until it's a multiple of 7, then store that number to begin loop
Beginning with that number, increment num by 7
  Check number: is it odd? and are no digits repeated?
    If so, return this number
    If not, next iteration
    Break loop if number has more than 10 digits and return error message

Helper method: Pass in a number, return boolean 
  true if is odd, multiple of 7, and no digits repeat
=end

def is_featured_num?(num)
  (num % 7 == 0) && 
  (num.odd?) && 
  (num.digits.length == num.digits.uniq.length)
end

def featured(num)
  result = num + 1

  while result % 7 != 0
    result += 1
  end

  loop do
    if is_featured_num?(result)
      return result
    end

    result += 7
    break if result.digits.length > 10
  end

  puts "Error: no possible featured number higher than input"
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987