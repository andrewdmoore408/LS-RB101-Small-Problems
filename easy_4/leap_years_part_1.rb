=begin
def leap_year?(year_num)
  if year_num % 100 == 0
    return (year_num % 400 == 0) ? true : false
  end
  
  (year_num % 4 == 0) ? true : false
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
p  leap_year?(1700) == false
p  leap_year?(1) == false
p  leap_year?(100) == false
p  leap_year?(400) == true
=end

=begin
Further exploration: the below code would fail for years divisible by 400
(since all numbers divisible by 400 are also divisible by 100 and thus were
previously handled by the return false statement).

def leap_year?(year)
  if year % 100 == 0
    false
  elsif year % 400 == 0
    true
  else
    year % 4 == 0
  end
end

My solution to testing division by 4 first, then by 100 if necessary,
then by 400 if needed. Writing the code this way ends up being more complex.
=end

def leap_year?(year_num)
  if year_num % 4 == 0
    if year_num % 100 != 0
      true
    else
      year_num % 400 == 0
    end
  else
    false
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
p  leap_year?(1700) == false
p  leap_year?(1) == false
p  leap_year?(100) == false
p  leap_year?(400) == true