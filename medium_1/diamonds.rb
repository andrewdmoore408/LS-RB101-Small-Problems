=begin
Problem

Diamonds!

Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

  Input(s): Odd integer n
  Output(s): Side-effect: print out 4-pointed diamond in nxn grid
  
  Explicit Rules:
    Argument will always be odd
    Output a 4-pointed diamond in an n x n grid
  Implicit Rules:
    Diamond begins with 1 and then adds 2 each row until it hits the input number, then decreases by 2 in each row until it's back at 1
  
  Questions?

  Notes/Thoughts
  
  Use String#center method to keep diamond centered
  Need to go from 1 up to n and then back to 1
  
Examples/Test Cases
diamond(1)

*

diamond(3)

 *
***
 *
 
 diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

Data Structures

n/a

Algorithms

Begin at 1 start, add 2 each row up to n stars, then decrease by 2 until it's back down to 1
Total number of rows will be n. Width of grid is also n

Initialize a counter variable to 1
Invoke 1.upto(n)
  Output counter # of stars, centered in n row
  If counter < n, counter += 2; else counter -= 2
  
=end

def diamond(size)
  num_stars = 1
  
  1.upto(size) do |x|
    stars = "*" * num_stars
    puts stars.center(size)
    x < (size / 2 + 1) ? num_stars += 2 : num_stars -= 2
  end
end

diamond(1)
diamond(3)
diamond(9)
diamond(13)