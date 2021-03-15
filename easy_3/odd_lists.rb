def oddities(arr)
  oddities_arr = []

  arr.each_with_index do |elem, index|
    if index.even?
      oddities_arr << elem
    end
  end

  oddities_arr
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []

# Further exploration
# To switch to the 2nd, 4th, 6th, elements, I would just need to change if index.even? to if index.odd? on line 5

# Another way to do this would be to use Array#select and utilize a counter inside the block which is passed to #select. It's a bit odd but it works. (I didn't find any method which provided something akin to select_with_index, and this is a way to kind of fake that.

def oddities_again(arr)
  counter = -1

  oddities_arr = arr.select do |_|
    counter += 1
    counter.even?
  end
end

puts oddities_again([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities_again([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities_again(['abc', 'def']) == ['abc']
puts oddities_again([123]) == [123]
puts oddities_again([]) == []
