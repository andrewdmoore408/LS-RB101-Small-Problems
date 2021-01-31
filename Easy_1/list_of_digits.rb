def digit_list(num)
  result = []

  while num > 0
    if num > 10
      next_digit = num % 10
      result.push(next_digit)
      num /= 10
    else
      result.push(num)
      num = 0
    end
  end

  result.reverse!
end

puts "12345: #{digit_list(12345)}"
puts "7: #{digit_list(7)}"
puts "375290: #{digit_list(375290)}"
