=begin
Problem

Swap Case

Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

  Input(s): String
  Output(s): String (new str with values from input except cases of letters are switched)
  
  Explicit Rules:
    Return a new string with cases of letters inverted
    Leave non-alpha chars the same
    Do not invoke #swapcase
  Implicit Rules:
  
  Questions?

  Notes/Thoughts
  
Examples/Test Cases

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

Data Structures

Strings
Arrays

Algorithms

Go through each character in the input string
If not a letter, add it to a new result string
If a letter, switch upper <-> lower case and then add it to the result string
Return the result string

Initialize constants UPPERCASE and LOWERCASE to use for reference
Initialize a new string for the result
Invoke #chars on the input string to convert it to an array
Iterate through the array
  For each character:
    Invoke #include? on UPPERCASE and LOWERCASE to check whether it's a letter
      If it is a letter, convert it to its opposite case
        Add the switched case to the result string
      If not, add the char to the result string without converting
Return the result string

Helper method (passing in a char as a argument)
Check whether it's in UPPERCASE or LOWERCASE
  If upper, invoke #downcase
  If lower, invoke #upcase
  Else return the original char

=end

UPPERCASE = ("A".."Z").to_a
LOWERCASE = ("a".."z").to_a

def convert_char(char)

  converted_char = nil
  
  if UPPERCASE.include?(char)
    converted_char = char.downcase
  elsif LOWERCASE.include?(char)
    converted_char = char.upcase
  else
    converted_char = char
  end

  converted_char
end

def swapcase(str)
  converted_str = ''
  
  str.chars.each do |char|
    converted_str << convert_char(char)
  end
  
  converted_str
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'