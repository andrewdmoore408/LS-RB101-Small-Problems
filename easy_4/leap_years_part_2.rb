def leap_year_after_1752?(year_num)
  if year_num % 100 == 0
    return (year_num % 400 == 0) ? true : false
  end
  
  (year_num % 4 == 0) ? true : false
end

def leap_year?(year_num)
  if year_num < 1752
    year_num % 4 == 0
  else
    leap_year_after_1752?(year_num)
  end
end

p  leap_year?(2016) == true
p  leap_year?(2015) == false
p  leap_year?(2100) == false
p  leap_year?(2400) == true
p  leap_year?(240000) == true
p  leap_year?(240001) == false
p  leap_year?(2000) == true
p  leap_year?(1900) == false
p  leap_year?(1752) == true
p  leap_year?(1700) == true
p  leap_year?(1) == false
p  leap_year?(100) == true
p  leap_year?(400) == true

=begin
Further exploration: My ancestral lands are Portugal, Ireland, and Germany.
Portugal switched from the Julian to the Gregorian calendar in 1582, skipping
10 days. Germany switched in 1583, 1610, or 1700, depending on which areas of 
present day Germany are being considered. All German changes led to skipping 10 days. 
Ireland switched in 1752 (same as England) and skipped 11 days. 