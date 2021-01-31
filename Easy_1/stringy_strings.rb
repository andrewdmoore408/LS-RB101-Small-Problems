def stringy(int, start=1)
  
  string_bits = ''

  int.times do |num|
    if (num + 1).odd?
      string_bits << ( (start == 1) ? '1' : '0' )
    else
      string_bits << ( (start == 1) ? '0' : '1' )
    end
  end

  string_bits

end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'
