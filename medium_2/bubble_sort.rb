=begin
Problem

Bubble Sort

Bubble Sort is one of the simplest sorting algorithms available. It isn't an efficient algorithm, but it's a great exercise for student developers. In this exercise, you will write a method that does a bubble sort of an Array.

A bubble sort works by making multiple passes (iterations) through the Array. On each pass, each pair of consecutive elements is compared. If the first of the two elements is greater than the second, then the two elements are swapped. This process is repeated until a complete pass is made without performing any swaps; at that point, the Array is completely sorted.

6   2   7   1   4   Start: compare 6 > 2? Yes
2   6   7   1   4   Exchange
2   6   7   1   4   6 > 7? No (no exchange)
2   6   7   1   4   7 > 1? Yes
2   6   1   7   4   Exchange
2   6   1   7   4   7 > 4? Yes
2   6   1   4   7   Exchange
          
2   6   1   4   7   2 > 6? No
2   6   1   4   7   6 > 1? Yes
2   1   6   4   7   Exchange
2   1   6   4   7   6 > 4? Yes
2   1   4   6   7   Exchange
2   1   4   6   7   6 > 7? No
          
2   1   4   6   7   2 > 1? Yes
1   2   4   6   7   Exchange
1   2   4   6   7   2 > 4? No
1   2   4   6   7   4 > 6? No
1   2   4   6   7   6 > 7? No
          
1   2   4   6   7   1 > 2? No
1   2   4   6   7   2 > 4? No
1   2   4   6   7   4 > 6? No
1   2   4   6   7   6 > 7? No
1   2   4   6   7   No swaps; all done; sorted

We can stop iterating the first time we make a pass through the array without making any swaps; at that point, the entire Array is sorted.

Write a method that takes an Array as an argument, and sorts that Array using the bubble sort algorithm as just described. Note that your sort will be "in-place"; that is, you will mutate the Array passed as an argument. You may assume that the Array contains at least 2 elements.

  Input(s): Array
  Output(s): The same array sorted in-place (using bubble sort)
  
  Explicit Rules:
    Moving through the array in order, compare each element with the next one
      If the first is larger than the second, swap them
      If not, continue
    Continue this loop until one complete pass is made without any swaps
    Return the same array, which is now sorted
  Implicit Rules:
  
  Questions?
  
  Will an error be thrown if array checks out of bounds (last index + 1?) 
    Yes: need to check index bound

  Notes/Thoughts
  
  Need to use a boolean to track whether or not any swaps are made
  
  Need an outer loop to contain the each iteration
  
Examples/Test Cases

array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

Data Structures

Array

Algorithms

Remember to mutate!

Set up a loop, which will continue until no swaps are done
  Initialize swap_made to false
  Invoke #each_index on the array to go through all indexes
    End iteration if current index is the last one
    Check if the current index's element is greater than the next index's element
      If so, swap them in place
        Set swap_made to true
      If not, continue
  Break if swap_made is false
Return the (mutated) array

=end

def bubble_sort!(arr)
  loop do
    swap_made = false
    
    arr.each_index do |i|
      break if i == arr.length - 1
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap_made = true
      end
    end
    
    break unless swap_made
  end
  
  nil
end

array = [5, 3]
bubble_sort!(array) == [3, 5]
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array) 
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array) 
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)