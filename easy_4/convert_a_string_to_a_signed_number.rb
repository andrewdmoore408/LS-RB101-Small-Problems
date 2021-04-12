def contains_sign?(str)
  /\+|-/ =~ str ? true : false
end

def get_numeric_digit_from_char(char)
  digits = { "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5,
             "6" => 6, "7" => 7, "8" => 8, "9" => 9, "0" => 0 }
  digits[char]
end

def string_to_integer(str_nums)
  num_chars = str_nums.chars.reverse
  
  number = 0
  
  num_chars.each_with_index do |char, i|
    number += (get_numeric_digit_from_char(char) * 10**i)
  end
  
  number
end

def convert_to_negative(num)
  0 - num
end

def string_to_signed_integer(str_nums)
  sign = nil
  digits = nil

  if contains_sign?(str_nums)
    sign = str_nums[0]
    digits = str_nums[1..-1]
  else
    sign = "+"
    digits = str_nums
  end

  num = string_to_integer(digits)

  if sign == "-"
    num = convert_to_negative(num)
  end

  num
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100