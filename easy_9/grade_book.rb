=begin
Problem

Grade book

Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.
Numerical Score Letter   Grade
90 <= score <= 100   'A'
80 <= score < 90   'B'
70 <= score < 80   'C'
60 <= score < 70   'D'
0 <= score < 60   'F'

Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

  Input(s): 3 integers between 0 and 100
  Output(s): String (letter grade determined by taking the mean of the 3 input nums)
  
  Explicit Rules:
    Take the arithmetic mean of the 3 input numbers
    Using the given scale, return the letter grade which corresponds to that mean
    Don't need to validate input
  Implicit Rules:
  
  Questions?

  Notes/Thoughts
  
Examples/Test Cases

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

Data Structures

Array

Algorithms

Collect the 3 numbers in an array
Initialize the mean to: sum of the array / 3
Determine the corresponding letter for that mean
Return the letter

Helper method: (taking mean as an input)
  Use a case statement to return the corresponding letter for the number

=end

def get_corresponding_letter(mean)
  case
  when mean >= 90 then 'A'
  when mean >= 80 && mean < 90 then 'B'
  when mean >= 70 && mean < 80 then 'C'
  when mean >= 60 && mean < 70 then 'D'
  else 'F'
  end
end

def get_grade(grade1, grade2, grade3)
  grades = [grade1, grade2, grade3]
  get_corresponding_letter(grades.sum / 3)
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"