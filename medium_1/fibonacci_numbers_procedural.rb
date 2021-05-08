=begin
Problem

Fibonacci Numbers (Procedural)

In the previous exercise, we developed a recursive solution to calculating the nth Fibonacci number. In a language that is not optimized for recursion, some (not all) recursive methods can be extremely slow and require massive quantities of memory and/or stack space.

Ruby does a reasonably good job of handling recursion, but it isn't designed for heavy recursion; as a result, the Fibonacci solution is only useful up to about fibonacci(40). With higher values of nth, the recursive solution is impractical. (Our tail recursive solution did much better, but even that failed at around fibonacci(8200).)

Fortunately, every recursive method can be rewritten as a non-recursive (procedural) method.

Rewrite your recursive fibonacci method so that it computes its results without recursion.

  Input(s): Integer n
  Output(s): The nth fibonacci number
  
  Explicit Rules:
    Use iterative/procedural calculation
    Return the nth fibonacci number
  Implicit Rules:
    Input will be a positive integer
  
  Questions?

  Notes/Thoughts
  
Examples/Test Cases

fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501

Data Structures

Array

Algorithms

Initialize a local variable to an array of [1, 1]
Assign a variable i to n - 1
Return array[i] if i < 2
Otherwise, loop until i = n - 1
  Sum the previous two elements and push that value to the array
Return the last array element

=end

def fibonacci(n)
  fib_nums = [1, 1]
  
  return fib_nums[n - 1] if n < 3
  
  (2..n - 1).each do |idx|
    fib_nums << fib_nums[idx - 1] + fib_nums[idx - 2]
  end
  
  fib_nums.last
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501