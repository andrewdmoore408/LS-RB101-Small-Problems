=begin
Problem

Name Swapping

Write a method that takes a first name, a space, and a last name passed as a single String argument, and returns a string that contains the last name, a comma, a space, and the first name.

  Input(s): String (first and last name with a space in between)
  Output(s): String (last name, then a comma and space, then first name)
  
  Explicit Rules:
    Return a new string inverting the order of the names and with a comma and space in the middle
  Implicit Rules:
  
  Questions?

  Notes/Thoughts
  
Examples/Test Cases

swap_name('Joe Roberts') == 'Roberts, Joe'

Data Structures

Strings
Array

Algorithms

Initialize a new array to the value of splitting the input string
Reverse the array
Return the result of invoking #join(", ") on the array

=end

def swap_name(str)
  names_arr = str.split.reverse
  names_arr.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'