def repeat(string, number)
  if number < 1
    return "ERROR: number of repeats must be a positive integer!"
  end

  counter = 0

  while counter < number
    puts string
    counter += 1
  end

end

repeat("Should be thrice!", 3)
repeat('Nope', -3)
repeat('I have decided at 5', 5)
