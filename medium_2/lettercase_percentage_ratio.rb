=begin

In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.

Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.

Problem
  Input(s): String (could contain uppercase, lowercase, or neither)
  Output(s): Hash (containing percentage of lowercase chars, uppercase chars, and non-letters)
  
  Explicit Rules:
    Chars could be upper, lower, or neither (or combination)
    Hash should contain percentages of each one
  Implicit Rules:
    Spaces count as non-letter chars as well as numbers and special characters
    
  Questions?
    Are spaces included? (Yes)
  
Examples/Test Cases

Data Structures

  String; Hash (3 keys)

Algorithms 
  Count the number of upper, lower, and non-letter chars in the strings
  Calculate the relative percentage of each category
  Store those values in a hash
  Calculate percentages
  Return those percentages in a hash
  
  Initialize a new hash with values of 0; categories for lower, upper, and neither
  Iterate through each char in the string
    Determine which category the char falls into and increment its count in the hash
  Calculate relative percentages by dividing each category count into the string length
  Return a new hash with the percentage for each category
=end

UPPERCASE_LETTERS = ("A".."Z").to_a
LOWERCASE_LETTERS = ("a".."z").to_a

def letter_percentages(string)
  
  category_count = { lowercase: 0, uppercase: 0, neither: 0 }
  
  string.chars.each do |char|
    if UPPERCASE_LETTERS.include?(char)
      category_count[:uppercase] += 1
    elsif LOWERCASE_LETTERS.include?(char)
      category_count[:lowercase] += 1
    else
      category_count[:neither] += 1
    end
  end
  
  percentages = {}
  
  category_count.each do |k, v|
    this_percentage = (v / (string.length).to_f * 100)
    
    percentages[k] = this_percentage
  end
  
  percentages
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }