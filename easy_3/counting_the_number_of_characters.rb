print "Please enter your word or phrase: "

user_string = gets.chomp

chars = user_string.chars

counter = 0 

chars.each do |char|
  counter += 1 unless char == ' '
end

puts "There are #{counter} characters in \"#{user_string}\"."
