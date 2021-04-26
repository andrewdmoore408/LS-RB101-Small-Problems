=begin
Problem

Staggered Caps (Part 2)

Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

  Input(s): String
  Output(s): New string (with alternating cases in letters)
  
  Explicit Rules:
    First letter should be uppercase, then each subsequent letter should alternate lower, then upper, then lower, etc.
  Implicit Rules:
    Begin with uppercase first
  
  Questions?

  Notes/Thoughts
  
Examples/Test Cases

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

Data Structures

String

Algorithms

Initialize a local variable to hold the result
Initialize a local boolean is_next_upper to true
Iterate through the input string 
  If current char is a letter
    Invoke upcase or downcase depending on the state of is_next_upper and replace the letter
    Toggle the state of is_next_upper
  If not a letter, next iteration

=end
def is_alpha?(char)
  ("A".."Z").to_a.include?(char) || ("a".."z").to_a.include?(char)
end

def staggered_case(str)
  staggered_str = ''
  is_next_upper = true
  
  str.each_char do |char|
    if is_alpha?(char)
      staggered_str << (is_next_upper ? char.upcase : char.downcase)
      is_next_upper = !is_next_upper
    else
      staggered_str << char
    end
  end
  
  staggered_str
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'