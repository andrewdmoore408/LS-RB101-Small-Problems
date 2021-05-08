=begin
Problem

Fibonacci Numbers (Last Digit)

In the previous exercise, we developed a procedural method for computing the value of the nth Fibonacci numbers. This method was really fast, computing the 20899 digit 100,001st Fibonacci sequence almost instantly.

In this exercise, you are going to compute a method that returns the last digit of the nth Fibonacci number.

  Input(s): Integer n
  Output(s): The final digit of the nth fibonacci number
  
  Explicit Rules:
    Return the last digit of the nth fibonacci number
  Implicit Rules:
    Input will be a positive integer
  
  Questions?
  
  Can I reuse a previous method implementation?

  Notes/Thoughts
  
Examples/Test Cases

fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
fibonacci_last(123456789) # -> 4

Data Structures

Array

Algorithms

Use the method from previous problem to generate the fibonacci number
Invoke #digits on that number and return the first digit from the array #digits reverses the order of the digits from least to most significant)

=end

def fibonacci(n)
  fib_nums = [1, 1]
  
  return fib_nums[n - 1] if n < 3
  
  (2..n - 1).each do |idx|
    fib_nums << fib_nums.last + fib_nums.shift
  end
  
  fib_nums.last
end

def fibonacci_last(n)
  fibonacci(n).digits.first
end

# p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4