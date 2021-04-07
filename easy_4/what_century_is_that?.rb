def calculate_century(year)
  first_year_in_century = year.to_s.chars.last == "0" ? true : false
  
  if first_year_in_century
    (year / 100).to_s
  else
    ((year / 100) + 1).to_s
  end
end

def add_suffix(century)
  last_two_digits = century.chars.last(2).join
  
  return century + "th" if (last_two_digits.to_i > 10) && (last_two_digits.to_i < 14)
  
  suffix = case century.chars.last.to_i
           when 1 then "st"
           when 2 then "nd"
           when 3 then "rd"
           else        "th"
           end
    
  century + suffix
end
    
def century(year)
  century_num = calculate_century(year)
  century_string = add_suffix(century_num)
  
  century_string
end
             
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'