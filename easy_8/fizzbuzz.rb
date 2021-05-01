=begin
Problem

fizzbuzz

Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

  Input(s): 2 numbers (starting and then ending number)
  Output(s): Side-effect of printing output (each number from the starting->ending number (inclusive) with divisible only by 3 as "Fizz", divisible only by 5 as "Buzz", and divisible by both is "FizzBuss" instead of the number
  
  Explicit Rules:
    Output each number beginning with first arg and ending on second arg, unless:
      Divisible by 3, not 5? "Fizz"
      Divisible by 5, not 3? "Buzz"
      Divisble by both 3 and 5? "FizzBuzz"
  Implicit Rules:
  
  Questions?
    Output individual numbers? (YES)

  Notes/Thoughts
  
Examples/Test Cases

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

Data Structures

N/A

Algorithms

Beginning with first number and going to second
  Output the number unless divisible by 3 and/or 5, adding a comma and space at the end
  

=end

def fizzbuzz(start, finish)
  
  start.upto(finish) do |num|
    to_output = case
                when (num % 3 == 0 && num % 5 != 0)
                  "Fizz"
                when (num % 5 == 0 && num % 3 != 0)
                  "Buzz"
                when (num % 3 == 0 && num % 5 == 0)
                  "FizzBuzz"
                else
                  num
                end
    print to_output
    print ", " unless num == finish
  end
  puts
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz