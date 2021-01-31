def sum(int)
  string_of_nums = int.to_s

  sum = 0

  string_of_nums.each_char { |c| sum += c.to_i }

  sum

end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
