def is_odd?(integer)

  integer % 2 == 1 ? true : false

end

puts is_odd?(2)
puts is_odd?(-148)
puts is_odd?(1600)

puts is_odd?(3)
puts is_odd?(-197)
puts is_odd?(-1933)

# If I weren't sure whether % is modulo or remainder in Ruby, I could add an additional condition to check for: whether integer % 2 == --1 (thus checking both for 1 and -1).

print "\n\n~~~~~\n\n"

def is_odd_remainder?(num)

  num.remainder(2) == 1 || num.remainder(2) == -1 ? true : false

end

puts is_odd_remainder?(2)
puts is_odd_remainder?(-68)

puts is_odd_remainder?(-1499)
puts is_odd_remainder?(1497)
