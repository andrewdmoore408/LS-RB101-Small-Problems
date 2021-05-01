=begin
Problem

Palindromic Substrings

Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

  Input(s): String
  Output(s): Array of strings (substrings from input which are palindromes)
  
  Explicit Rules:
    Palindromes are case-sensitive and special characters count as well; the string must read exactly the same forward to backward to count as a palidrome
    Palindromes must be returned in the order they occur in the input string
    Repeat palindromes should be included if they occur multiple times in the input
  Implicit Rules:
  
  Questions?

  Notes/Thoughts
  
Examples/Test Cases

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

Data Structures

Algorithms

=end

def leading_substrings(str)
  
  substrings = []
  
  str.each_char.map.with_index do |_, index|
    substrings << str[0..index]
  end
  
  substrings
end

def substrings(str)
  substrings = []
  
  0.upto(str.length - 1) do |index|
    substrings << leading_substrings(str[index..-1])
  end
  
  substrings.flatten
end

def palindromes(str)
  return [] if str.length < 2
  
  substrings = substrings(str)
  
  palindromes = []
  
  substrings.each do |substr|
    if substr.reverse == substr && substr.length > 1
      palindromes << substr 
    end
  end
  
  palindromes
end

p palindromes('abcd') == [] 
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]