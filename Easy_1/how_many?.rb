vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)

  occurrences = Hash.new

  array.each do |item|
    if occurrences.key?(item) 
      occurrences[item] += 1
    else 
      occurrences[item] = 1
    end
  end

  occurrences.each { |k, v| puts "#{k} => #{v}" }

end

count_occurrences(vehicles)
