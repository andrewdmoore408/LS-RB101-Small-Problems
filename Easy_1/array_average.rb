def average(array)
  sum = 0

  array.each { |x| sum += x }

  sum / array.size
end

puts average([1, 6]) == 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# Further exploration
# To make the returned average a float rather than an integer, I would make the divisor array.size.to_f
# Appending #to_f to the divisor will result in float division rather than integer division
