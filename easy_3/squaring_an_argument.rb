def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

p square(5) == 25
p square(-8) == 64
p square(12) == 144

# Further exploration: more general exponentiation method
def to_power_of(base, exponent)
  result = 1
  exponent.times { |_| result = multiply(result, base) }
  result
end

# After looking at some other student solutions, I realize that my to_power_of implementation doesn't properly handle negative exponents. However, it functions correctly for 0 and positive exponent values.
