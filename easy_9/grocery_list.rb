=begin
Problem

Grocery List

Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

  Input(s): Array of 2-element subarrays containing (string (fruit), number (count))
  Output(s): Array of strings containing each string the number of times of its count within the input
  
  Explicit Rules:
    Return the an array set to have each string (fruit) appear the number of times of its count (second element in each nested subarr)
  Implicit Rules:
  
  Questions?

  Notes/Thoughts
  
Examples/Test Cases

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

Data Structures

Array

Algorithms

Transforming the input array, so #map should work to make nested array
Need to flatten it afterward

=end

def buy_fruit(fruit_list)
  fruit_list.map do |(fruit, count)|
    this_fruit_arr = []
    count.times { |_| this_fruit_arr << fruit }
    this_fruit_arr
  end.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]