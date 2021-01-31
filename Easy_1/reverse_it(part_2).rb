def reverse_words(string)

  new_words = []

  words = string.split

  words.each do |word|
    new_words.push( word.length > 4 ? word.reverse! : word )
  end

  new_words.join(' ')

end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')
