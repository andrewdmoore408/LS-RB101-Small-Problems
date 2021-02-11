
ordinal_strings = [ '1st', '2nd', '3rd', '4th', '5th' ]
five_nums = []

def prompt(substr)
  puts "--> #{substr}"
end

def valid_num?(x)
  x.to_i.to_s == x
end

ordinal_strings.each_with_index do |string, index|
  
  loop do
    prompt "Enter the #{string} number:"

    num = gets.chomp
    if valid_num?(num) 
      five_nums << num.to_i
      break
    else
      prompt "That's not a valid number! Try again."
    end
  end
end

needle = nil

loop do
  prompt "Enter the last number:"

  num = gets.chomp
  if valid_num?(num)
    needle = num.to_i
    break
  else
    prompt "Not a valid number! Try again..."
  end
end

if five_nums.any?(needle)
  prompt "The number #{needle} appears in #{five_nums}"
else
  prompt "The number #{needle} does not appear in #{five_nums}"
end

puts five_nums
