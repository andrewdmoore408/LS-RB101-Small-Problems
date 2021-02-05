puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area_in_sq_meters = length * width

area_in_sq_ft = area_in_sq_meters * 10.7639

puts "The area of the room is #{area_in_sq_meters.round(2)} square meters (#{area_in_sq_ft.round(2)} square feet)."
