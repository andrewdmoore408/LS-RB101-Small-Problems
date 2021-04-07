def calculate_lower_multiples(num_to_multiply, maximum)
  multiples = []
  
  multiplier = 1
  
  loop do
    product = num_to_multiply * multiplier
    break if product > maximum
    multiples.push(product)
    multiplier += 1
  end
  
  multiples
end

def multisum(num)
  multiples = []
  
  multiples.push(calculate_lower_multiples(3, num))
  multiples.push(calculate_lower_multiples(5, num))
  
  multiples = multiples.flatten.uniq
  
  sum = multiples.reduce(&:+)
  
  sum
end

  p  multisum(3) == 3
  p  multisum(5) == 8
  p  multisum(10) == 33
  p  multisum(20) == 98
  p  multisum(1000) == 234168