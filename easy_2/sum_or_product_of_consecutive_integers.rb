def compute_sum(num)
  (1..num).reduce(:+)
end

def compute_product(num)
  (1..num).reduce(1, :*)
end

puts "Please enter a positive integer:"

input = nil

loop do
  input = gets.chomp.to_i

  break if input.positive?
  puts "Invalid...please enter a positive integer:"
end

puts "Enter 's' for the sum or 'p' for the product"

calculation = nil

loop do
  calculation = gets.chomp.downcase
  
  break if calculation[0] == 's' || calculation[0] == 'p'
  puts "I need an 's' for sum or 'p' for product. Which would you like?"
end

if calculation[0] == 's' 
  puts "The sum of the integers from 1 to #{input} is #{compute_sum(input)}"
else
  puts "The product of the integers from 1 to #{input} is #{compute_product(input)}"
end
