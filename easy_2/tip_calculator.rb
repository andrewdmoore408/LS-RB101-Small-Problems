def valid_num?(num)
  (num.to_s.to_f == num || num.to_s.to_i == num) && num.positive? 
end

def tip_calculator
  print "What is the bill?"
  
  bill = nil
  loop do
    bill = gets.chomp.to_f

    break if valid_num?(bill)
    puts "Not a valid number--what is the bill?"
  end
  
  print "What is the tip percentage? (eg 15 or 18)"
  tip_percentage = nil

  loop do
    tip_percentage = gets.chomp.to_f

    break if valid_num?(tip_percentage)
    puts "Not a valid number--what is the tip percentage?"
  end

  tip_multiplier = tip_percentage / 100
  tip_amount = bill * tip_multiplier

  total_bill = bill + tip_amount

  puts "The tip is $#{format("%.2f", tip_amount)}"
  puts "The total is $#{format("%.2f", total_bill)}"
end

tip_calculator
