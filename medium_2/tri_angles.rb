=begin
Problem

Tri-Angles

A triangle is classified as follows:

    right One angle of the triangle is a right angle (90 degrees)
    acute All 3 angles of the triangle are less than 90 degrees
    obtuse One angle is greater than 90 degrees.

To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

You may assume integer valued angles so you don't have to worry about floating point errors. You may also assume that the arguments are specified in degrees.

  Input(s): 3 integers (representing the 3 angles of a triangle)
  Output(s): Symbol (type of triangle: :right, :acute, :obtuse, or :invalid)
  
  Explicit Rules:
    Invalid if:
      One of the inputs is < 1, or the three inputs don't sum to 180
    Right if: one of the inputs is 90
    Acute if: all angles are less than 90
    Obtuse if: one angle is greater than 90
  Implicit Rules:
  
  Questions?

	Notes/Thoughts
  
Examples/Test Cases

triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid

Data Structures

Array

Algorithms

Initialize an array to point to the input values and sort them
Check for invalid input: invalid if sum != 180 or any of them is < 1
Obtuse if greatest angle > 90
Right if one angle == 90
Else acute

=end

def invalid?(angles)
  angles.any? { |angle| !(angle.positive?) } || angles.sum != 180
end

def triangle(*angles)
  angles = angles.sort
  return :invalid if invalid?(angles)

  largest_angle = angles.last 

  if largest_angle == 90
    :right
  elsif largest_angle > 90
    :obtuse
  else
    :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid