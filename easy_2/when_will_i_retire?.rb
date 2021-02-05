# Time class has methods which are useful for a case like this
# Time.now.year returns the current year at the time of execution

CURRENT_YEAR = Time.now.year

print "What's your age?  ~>"
age = gets.chomp.to_i

print "At what age would you like to retire?  ~>"
retirement_age = gets.chomp.to_i

years_left_working = retirement_age - age
retirement_year = CURRENT_YEAR + years_left_working

puts "It's #{CURRENT_YEAR}. You will retire in #{retirement_year}."
puts "You have only #{years_left_working} years of work to go!"
