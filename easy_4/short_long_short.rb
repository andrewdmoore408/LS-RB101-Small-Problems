def organize_strings_by_size(str1, str2)
  [str1, str2].sort_by { |str| str.size }
end

def short_long_short(str1, str2)
  shorter, longer = organize_strings_by_size(str1, str2)
  
  "#{shorter}#{longer}#{shorter}"
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"