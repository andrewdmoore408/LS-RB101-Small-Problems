def get_numeric_digit_from_char(char)
  digits = { "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5,
             "6" => 6, "7" => 7, "8" => 8, "9" => 9, "0" => 0 }
  digits[char]
end

def string_to_integer(str_num)
  num_chars = str_num.chars.reverse
  
  number = 0
  
  num_chars.each_with_index do |char, i|
    number += (get_numeric_digit_from_char(char) * 10**i)
  end
  
  number
end

p string_to_integer("12345") == 12345
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570