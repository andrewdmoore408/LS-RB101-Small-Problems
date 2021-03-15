def palindrome?(string_or_array)
 string_or_array == string_or_array.reverse
end

def real_palindrome?(string)
  alphanumeric_array = string.chars.reject do |c|
    num = c.ord
    (num < 48) || (num > 57 && num < 65) || (num > 90 && num < 97) || (num > 122)
  end

  alphanumeric_string = alphanumeric_array.join.downcase

  palindrome?(alphanumeric_string)
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (numase does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
