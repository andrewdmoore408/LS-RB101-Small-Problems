def palindromic_number?(num)
  palindrome?(num.to_s)
end

def palindrome?(str)
  str == str.reverse
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true

# Further exploration: If the number began with a zero, the method as written wouldn't work because a leading 0 indicates an octal number. To fix this, we could check whether the number.to_s == number.to_s(8) to see whether or not it's being converted to an octal number. After that, we'd have to calculate what the number would be in base 10, call to_s on that number, and prepend a "0" character to the front of the string.
