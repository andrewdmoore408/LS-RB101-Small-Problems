=begin

After Midnight (Part 2)

As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

You may not use ruby's Date and Time methods.

PROBLEM
  INPUT(S): String (representing 24-hour time)
  OUTPUT(S): Integer (number of minutes away from midnight)
  
  EXPLICIT RULES: 
    Two separate methods: one counts backward from midnight, one forward
    String represents 24-hour time and needs to be converted to the minutes away from midnight it is
  IMPLICIT RULES:
    Both '00:00' and '24:00' return 0 as they both represent midnight and thus are 0 minutes away from it.
  
  QUESTIONS?
  Need to validate input?
  
EXAMPLES/TEST CASES

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

DATA STRUCTURES

Strings (of numbers)

ALGORITHMS

Both methods are going to calculate the difference away from midnight—they are just going in different directions. So one method can be used to calculate time one way and then the other method can subtract that method's result from the total number of minutes in a day minus one (1439).

The simplest thing to do would probably be to add enough minutes to get to the next round hour, subtract that hour from 23, then multiply that difference * 60 and add the delta minutes added early to reach the number of minutes away from midnight. To reverse things for the other method, subtract the result of this first method (before midnight) from 1439.

Before midnight:

Split hours and minutes by the ':' delineator and convert to integers. 
Subtract minutes from 60 to get number of minutes to get to the next round hour.
Add one to hours and then subtract that result from 23 to get hours away. 
Multiply hours away by 60 and then add the minutes added earlier to get the number of minutes from midnight.

After midnight:

Call before midnight, then subtract that result from 1440 and return the difference.

=end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = 1440

def before_midnight(time)
  
  return 0 if time == "24:00" || time == "00:00" 
  
  hours, minutes = time.split(':').map(&:to_i)
  
  minutes_to_next_hour = MINUTES_PER_HOUR - minutes
  hours_to_midnight = (HOURS_PER_DAY - hours) - 1
  
  minutes_away = hours_to_midnight * MINUTES_PER_HOUR + minutes_to_next_hour
  
  minutes_away
end

def after_midnight(time)
  minutes_before = before_midnight(time)
  
  return 0 if minutes_before == 0
  
  MINUTES_PER_DAY - minutes_before
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0