=begin
Problem

Matching Parentheses?

Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

Note that balanced pairs must each start with a (, not a ).

  Input(s): String
  Output(s): Boolean (whether parentheses occur in pairs with '('' coming before ')')
  
  Explicit Rules:
    Parentheses must occur in pairs and there must never be a ')' before a matching '('
  Implicit Rules:
  
  Questions?
    Empty string (seems unnecessary from test cases)

	Notes/Thoughts
  
Examples/Test Cases

balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false

Data Structures

String
Array

Algorithms

Can disregard all non-parens chars. Use select to only focus on those? Perhaps unnecessary
Could use a hash with parens as keys to track counts

Initialize constants for open and closing parens
Iterate through each char in the string
  Increment count if char is a '(' or ')'
  If closed count is higher than open, return false
If counts aren't equal, return false
Return true

=end
  OPEN_PARENS = '('
  CLOSE_PARENS = ')'

def balanced?(str)

  parens_counts = { 
    OPEN_PARENS => 0, 
    CLOSE_PARENS => 0
  }

  str.each_char do |char|
    if char == OPEN_PARENS || char == CLOSE_PARENS
      parens_counts[char] += 1
      return false if parens_counts[CLOSE_PARENS] > parens_counts[OPEN_PARENS]
    end
  end

  parens_counts[CLOSE_PARENS] == parens_counts[OPEN_PARENS]
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false