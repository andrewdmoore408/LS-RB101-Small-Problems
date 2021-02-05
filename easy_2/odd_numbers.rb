# first solution (1..99).each { |x| puts x if x.odd?}

# alternate implementation

1.upto(99) { |x| puts x if x % 2 == 1 }
