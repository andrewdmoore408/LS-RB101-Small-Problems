=begin
Problem

Triangle Sides

A triangle is classified as follows:

    equilateral All 3 sides are of equal length
    isosceles 2 sides are of equal length, while the 3rd is different
    scalene All 3 sides are of different length

To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

  Input(s): 3 numbers (ints or floats)
  Output(s): symbol (:equilateral, :isosceles, :scalene, or :invalid)
  
  Explicit Rules:
    Sum of the two smallest numbers must be greater than the largest number
    All lengths must be > 0
      If either isn't met, invalid
    All 3 nums identical: equilateral
    2 equal, third different: isosceles
    all 3 different: scalene
  Implicit Rules:
  
  Questions?

	Notes/Thoughts

  Can sort, sum first(2) to check for length validity
  All? > 0 ( or any? < 0 return invalid)
  
Examples/Test Cases

triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

Data Structures

Array

Algorithms

Initialize an array to the values of args and sort it
Return false if any < 1, or if first two values' sum isn't > third

Count the number of same elements:
  If 0, scalene
  If 2, isosceles
  If 3, equilateral

Helper method:
  Check for invalid by checking lengths > 0 and whether first 2 sum is greater than the other side

Helper method: 
  Count number of sides which have the same value
=end

def invalid?(sides)
  sides.any? { |side| side < 1 } || sides.first(2).sum <= sides.last 
end

def count_same_length_sides(sides)
  count_by_length = Hash.new(0)

  sides.each do |length|
    count_by_length[length] += 1
  end

  count_by_length.max_by { |k, v| v }.last
end

def triangle(*sides)
  sides = sides.sort

  return :invalid if invalid?(sides)

  case count_same_length_sides(sides)
  when 1 then :scalene
  when 2 then :isosceles
  when 3 then :equilateral
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid