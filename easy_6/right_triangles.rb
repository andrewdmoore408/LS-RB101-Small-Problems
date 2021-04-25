=begin
Problem

Right Triangles

Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

  Input(s): Positive integer
  Output(s): A right triangle made up of asterisks with the right vertical and bottom horizontal having the same number of asterisks as the input

  Questions?

  Notes/Thoughts
  
  Will need to add spaces to make up the full line (except for the bottom line)
  Each line will add up to the input number of characters (spaces + asterisks) 
  
Examples/Test Cases

triangle(5)

    *
   **
  ***
 ****
*****

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

Data Structures

N/A

Algorithms

Begin with n - 1 spaces, then 1 asterisk
Next line is n - 2 spaces, then 2 asterisks...
So on until only asterisks for the final line

Use a range of 1..n to loop n times. 
  Output (n - current number) # of spaces, then n # of stars

=end

# def triangle(length)
#   (1..length).each do |num|
#     puts "#{" " * (length - num)}#{"*" * num}"
#   end
# end

# triangle(5)
# triangle(9)

# Further exploration

# What determines how the triangle comes out (in addition to the size of the vertical and horizontal lines) is the sequence of the characters (space first or stars first?) and whether the number of stars is going up or down. These three variables control which corner the right angle ends up on.

# bottom right: spaces then stars, num of stars increments
# top right: spaces then stars, num of stars goes down
# bottom left: stars then spaces, num of stars goes up
# top left: stars then spaces, num of stars goes down

STAR = "*"
SPACE = " "

def display_triangle(length, first_char, second_char, stars_are_increasing)
  first_char_count = nil
  first_char_count_change = nil
  
  case first_char
  when SPACE
    if stars_are_increasing
      first_char_count = length - 1
      first_char_count_change = "-"
    else
      first_char_count = 0
      first_char_count_change = "+"
    end
  when STAR
    if stars_are_increasing
      first_char_count = 1
      first_char_count_change = "+"
    else
      first_char_count = length
      first_char_count_change = "-"
    end
  end
  
  length.times do |_|
    second_char_count = length - first_char_count
    puts "#{first_char * first_char_count}#{second_char * second_char_count}"
    
    first_char_count = eval("#{first_char_count} #{first_char_count_change} 1")
  end
end
  
def triangle(length, right_angle_corner)
  case right_angle_corner
  when "top-left"
    display_triangle(length, STAR, SPACE, false)
  when "top-right"
    display_triangle(length, SPACE, STAR, false)
  when "bottom-left"
    display_triangle(length, STAR, SPACE, true)
  when "bottom-right"
    display_triangle(length, SPACE, STAR, true)
  else
    puts "ERROR: Invalid right angle position. Second argument must be 'top-left', 'top-right', 'bottom-left', or 'bottom-right'."
  end
end

triangle(5, "top-left")