age = rand(20..200)

puts "What's your name?   ~>"
name = gets.chomp

name = (name == '' ? 'Teddy' : name)
puts "#{name} is #{age} years old!"

