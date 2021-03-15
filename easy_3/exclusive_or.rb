def xor?(arg1, arg2)
  args = [arg1, arg2]

  tf_hash = {truthy: 0, falsey: 0}

  args.each do |arg|
    if arg
      tf_hash[:truthy] += 1
    else
      tf_hash[:falsey] += 1
    end
  end

  return false unless tf_hash.values == [1, 1]

  true
end

puts xor?(true, false) 
puts xor?(5.odd?, 11.odd?)
puts xor?(false, false)
puts xor?(true, true)
puts xor?(9, nil)
