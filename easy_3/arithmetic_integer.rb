operations = ['+', '-', '*', '/', '%', '**' ]

puts "Enter the first number:"
first_int = gets.chomp.to_i

puts "Enter the second number:"
second_int = gets.chomp.to_i

operations.each do |op|
  result = eval "#{first_int} #{op} #{second_int}"

  puts "#{first_int} #{op} #{second_int} = #{result}"
end
