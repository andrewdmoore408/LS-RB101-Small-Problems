require "pry"
=begin

Cute angles

Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

Note: your results may differ slightly depending on how you round values, but should be within a second or two of the results shown.

You should use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07".

You may use this constant to represent the degree symbol: DEGREE = "\xC2\xB0"

PROBLEM
  INPUT(S): Floating point number (from 0 - 360)
  OUTPUT(S): String (Degrees, minutes, seconds)
  
  EXPLICIT RULES:
    Input number needs to be converted into degrees/mins/secs
    60 mins to a degree; 60 secs to a minute
    Leading zeros as needed to make mins and secs 2-digit
  IMPLICIT RULES:
    Fractional value will be converted into minutes and then seconds
  
  QUESTIONS?
    How to convert?! Need to calculate 1/60 and then 1/360
  
EXAMPLES/TEST CASES

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

DATA STRUCTURES

N/A

ALGORITHMS

Get the number of degrees using the whole number in the input
  Convert the float to a string and slice up to the decimal, then convert that back to an integer
  Save this result as the degrees
Get the number of minutes
  Take the part of the number after the period, convert back to a number, and multiply it by 60
  Follow the same process as above for degrees to save the value of the whole number as the minutes 
(using the whole number to the left of the decimal)
Get the number of seconds by using the fractional remainder of the number
  Multiply that by 60 and save it as seconds 
Return string of degrees, minutes, and seconds concatenated together with their respective signs

=end

DEGREE_SIGN = "\xC2\xB0"
MINUTE_SIGN = "'"
SECOND_SIGN = "\""

DEGREE = 1
MINUTE = 1/60.to_f
SECOND = MINUTE / 60.to_f

def calculate_partial(num, decrement_amount)
  result = 0
  
  while num >= decrement_amount
    # result = 30; num = 0; decrement_amount = 1
    # binding.pry
    
    num -= decrement_amount 
    result += 1
  end
  
  [result, num] 
end

def formatted_minutes_seconds(minutes, seconds)
  minutes = minutes.to_s.length < 2? minutes.to_s.prepend("0") : minutes
  seconds = seconds.to_s.length < 2? seconds.to_s.prepend("0") : seconds

  [minutes, seconds]
end

def dms(num)
  degrees, num = calculate_partial(num, DEGREE) # => [76, .73]
  minutes, num = calculate_partial(num, MINUTE)
  seconds, num = calculate_partial(num, SECOND)

  minutes, seconds = formatted_minutes_seconds(minutes, seconds)
  
  "#{degrees}#{DEGREE_SIGN}#{minutes}#{MINUTE_SIGN}#{seconds}#{SECOND_SIGN}"
end


p dms(76.73) == %(76°43'48")
p dms(254.6) #== %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")