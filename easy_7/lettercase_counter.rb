=begin
Problem

Lettercase Counter

Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.

  Input(s): string
  Output(s): hash (with 3 entries: 1 counting uppercase letters, 1 lowercase, and then 1 which counts other chars)
  
  Explicit Rules:
    Hash returned needs to count occurences of uppercase, lowercase, and non-letter characters separately
  Implicit Rules:
    If input is empty string, return hash with values of 0 for all three
    Keys are :lowercase, :uppercase, and :neither
  
  Questions?

  Notes/Thoughts
  
Examples/Test Cases

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

Data Structures

String
Hash

Algorithms

Go through each character in the string and count the occurrences of uppercase, lowercase, and non-letter chars

Initialize 2 constants to contain uppercase and lowercase letters (for comparison later)
Initialize the hash to store counts
Invoke #chars and iterate through each char using #each
  For each char, determine whether it's uppercase, lowercase, or neither
    Increment the count for its category

Helper method: determining which category a char matches (takes char as an arg)
  if it's uppercase, return :uppercase
  if lowercase, return :lowercase
  else return :neither

=end

p UPPERCASE = ("A".."Z").to_a
p LOWERCASE = ("a".."z").to_a

def get_char_category(char)
  return :uppercase if UPPERCASE.include?(char)
  return :lowercase if LOWERCASE.include?(char)
  return :neither
end

def letter_case_count(str)
  char_counts = { lowercase: 0, uppercase: 0, neither: 0 }
  
  str.chars.each do |char|
    char_counts[get_char_category(char)] += 1
  end
  
  char_counts
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }