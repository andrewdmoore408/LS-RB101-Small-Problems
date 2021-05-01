=begin
Problem

Reverse the Digits In a Number

Write a method that takes a positive integer as an argument and returns that number with its digits reversed. 

Don't worry about arguments with leading zeros - Ruby sees those as octal numbers, which will cause confusing results. For similar reasons, the return value for our fourth example doesn't have any leading zeros.

  Input(s): Positive integer
  Output(s): The input with its digits reversed (ignoring leading zeros)
  
  Explicit Rules:
    Return the input number with its digits in reverse order
    Ignore leading zeros (don't need to return them)
  Implicit Rules:
    Return the same digit if only one digit long
  
  Questions?

  Notes/Thoughts
  
Examples/Test Cases

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

Data Structures

Number
Array

Algorithms

Invoke #digits on the input, then join the returned array into a string and convert that to an integer to return 

=end

def reversed_number(num)
  num.digits.join.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1