def ascii_value(string)
  ascii_values = string.chars.map { |char| char.ord }
  
  ascii_values.sum
end

 p ascii_value('Four score') == 984
 p ascii_value('Launch School') == 1251
 p ascii_value('a') == 97
 p ascii_value('') == 0

 # Further exploration: the mystery method is Integer#chr, which converts an 
 # integer into the character it represents according to its ASCII value 

 # This only works as is with one character—for an entire string, it would be
 # necessary to go character by character for the conversion.