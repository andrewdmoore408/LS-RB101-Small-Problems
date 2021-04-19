=begin

Bannerizer

Write a method that will take a short line of text, and print it within a box.

You may assume that the input will always fit in your terminal window.

PROBLEM
  INPUT(S): String
  OUTPUT(S): Side effect: output string to terminal within a box
  
  EXPLICIT RULES:
    The string must be output surrounded by pluses, hyphens, and pipes in a way that forms a box when output on the screen
  IMPLICIT RULES:
    Text must be centered in the box with one space before and after
  
  QUESTIONS?
  
EXAMPLES/TEST CASES

print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+

DATA STRUCTURES

Strings

ALGORITHMS

Calculate string length and store its value + 2
Output box line-by-line
  Border line: begin and end with plus signs, saved length of hyphens in the middle
  Spacer line: begin and end with pipes, saved length of space in the middle
  Text line: space at beginning and end, output string in the middle
  Spacer line: same as above
  Border line: same as border line above

=end

require 'pry'

TOTAL_SIDE_SPACE = 2
LINE_WIDTH = 80

def construct_line(width, end_char, middle_char)
  output_str = end_char
  
  width.times { |_| output_str += middle_char }
  
  output_str += end_char
  
  output_str
end
  
def output_border_line(width)
  width = LINE_WIDTH + 2 if width > LINE_WIDTH
  puts construct_line(width, "+", "-")
end

def output_spacer_line(width)
  width = LINE_WIDTH + 2 if width > LINE_WIDTH
  puts construct_line(width, "|", " ")
end

def output_box_text(text)
  if text.length < LINE_WIDTH
    puts "| #{text} |"
    return
  end

  output_arr = []

  while text.length > LINE_WIDTH
    output_arr << text.slice!(0, LINE_WIDTH)
  end

  if text.length < LINE_WIDTH
    first_num_spaces, second_num_spaces = (text.length / 2).odd? ?
          [(LINE_WIDTH - text.length) / 2, ((LINE_WIDTH - text.length) / 2) + 1] :
          [(LINE_WIDTH - text.length) / 2, (LINE_WIDTH - text.length) / 2]
    output_arr << "#{" " * first_num_spaces}#{text}#{" " * second_num_spaces}"
  end

  output_arr.each { |line| puts "| #{line} |" }
end  

def print_in_box(text)
  box_width = text.length + TOTAL_SIDE_SPACE
  
  output_border_line(box_width)
  output_spacer_line(box_width)
  output_box_text(text)
  output_spacer_line(box_width)
  output_border_line(box_width)
end

print_in_box('To boldly go where no one has gone before.')
print_in_box("To be honest, I must say that this string is entirely too long. I'm not sure exactly where it shall end up, but I can tell already (just because of my extreme mental alacrity) that this should be at the very least 3 lines of output. Possibly 4. But then who knows? I'm capricious and arbitrary. Much like life itself. Cheerio now!!")
print_in_box('')