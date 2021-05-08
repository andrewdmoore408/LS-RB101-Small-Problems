=begin
Problem


Fibonacci Numbers (Recursion)

The Fibonacci series is a sequence of numbers starting with 1 and 1 where each number is the sum of the two previous numbers: the 3rd Fibonacci number is 1 + 1 = 2, the 4th is 1 + 2 = 3, the 5th is 2 + 3 = 5, and so on. 

sum is a recursive method that computes the sum of all integers between 1 and n.

Recursive methods have three primary qualities:

    They call themselves at least once.
    They have a condition that stops the recursion (n == 1 above).
    They use the result returned by themselves.

In the code above, sum calls itself once; it uses a condition of n == 1 to stop recursing; and, n + sum(n - 1) uses the return value of the recursive call to compute a new return value.

Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method.

If you find yourself struggling to understand recursion, see this forum post. It's worth the effort learning to use recursion.

That said, this exercise is a lead-in for the next two exercises. It verges on the Advanced level, so don't worry or get discouraged if you can't do it on your own. Recursion is tricky, and even experienced developers can have trouble dealing with it.

  Input(s): Integer (n)
  Output(s): The nth fibonacci number
  
  Explicit Rules:
    Use recursion
    Calculate the nth fibonacci number and return that
  Implicit Rules:
    Input will be a positive integer
  
  Questions?

  Notes/Thoughts
  
Examples/Test Cases

fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765

Data Structures

n/a

Algorithms

return 1 if n == 1 || n == 2

else return fibonacci(n - 1) + fibonacci(n-2)

=end

def fibonacci(n)
  return 1 if n == 1 || n == 2
  
  fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765