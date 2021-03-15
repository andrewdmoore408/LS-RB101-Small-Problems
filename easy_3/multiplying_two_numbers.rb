def multiply(num1, num2)
  num1 * num2
end

p multiply(5, 3) == 15
p multiply(14, 2) == 28
p multiply(-3, 10) == -30

p multiply([1, 2, 3], 3)

# Further exploration: if the left hand operand is an array (and the right still an integer), the elements of the array are duplicated (in order) and appended to the array. This happens for each time by which the array is being multiplied.

#Interestingly, if the operand on the right is the one which is an array, an error is thrown. An error is also thrown if both operands are arrays.
