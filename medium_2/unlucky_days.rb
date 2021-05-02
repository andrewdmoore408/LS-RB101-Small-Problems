require 'date'
=begin
Problem

Unlucky Days

Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.

  Input(s): Integer (representing a calendar year)
  Output(s): Integer
  
  Explicit Rules:
    Calculate the number of Friday the 13ths in the year and return it
    Year passed in will be greater than 1752
  Implicit Rules:
  
  Questions?
  
  How can I calculate this? Need to look up date methods for Ruby

  Notes/Thoughts
  
  
Examples/Test Cases

friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2

Data Structures

Date object? Year object?

Algorithms

Initialize a variable to 0 to keep count of Friday the 13ths
Need to initialize a date or year object using the input 
  Go through the 12 months of the year getting the 13th day
    If the 13th is on a Friday, increment the count
Return the count

=end

FRIDAY = 5
UNLUCKY_DATE = 13

def friday_13th(year)
  unlucky_days = 0
  
  1.upto(12) do |month|
    if Date.new(year, month, UNLUCKY_DATE).wday == FRIDAY
      unlucky_days += 1
    end
  end
  
  unlucky_days
end
# test = Date.new(2021, 1, 1)
# p test.wday == FRIDAY

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2