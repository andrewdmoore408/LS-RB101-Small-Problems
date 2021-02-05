puts "What's your name?"
name = gets.chomp

if name.end_with?('!')
  puts "HELLO, #{name.upcase}!! WHY ARE WE SCREAMING?!?!"
else
  puts "Hello, #{name}. It's nice to meet you."
end
