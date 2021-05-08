=begin
Problem

1000 Lights

You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

Example with n = 5 lights:

    round 1: every light is turned on
    round 2: lights 2 and 4 are now off; 1, 3, 5 are on
    round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
    round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
    round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].


  Input(s): Integer (number of lights)
  Output(s): Array of integers (lights which are on)
  
  Explicit Rules:
    The input number represents both the number of lights and the number of times going through and toggling switches
    On the first pass, every light is toggled on
      Second pass: 2, 4, 6, etc, is toggled (off, in this case)
      Third pass: 3, 6, 9, etc. is toggled
      Fourth pass: 4, 8, 12, etc. is toggled
      And so on
  Implicit Rules:
    First pass starts at 1 and 1 is added to the num each time
    Second pass starts at 2 and 2 is added to the num each time
    And so on...
  
  Questions?

  Notes/Thoughts
  
  How to represent the lights...?
  
Examples/Test Cases

lights(5) == [1, 4]
lights(10) == [1, 4, 9]

Data Structures

Hash
Array

Algorithms

Initialize a hash with input n numbers as keys and set them to on
Beginning from 2 up to input num:
  Start at num of iteration and toggle that switch 
  Increment the num by itself and toggle that switch
Return an array of keys whose values are on

Helper method: toggle light (return 'off' if was 'on' and vice versa
=end

def toggle_switch(state)
  state == "on" ? "off" : "on"
end

def lights(num_lights)
  lights = {}

  num_lights.times do |x|
    lights[x+1] = "on"
  end
  
  2.upto(num_lights) do |x|
    switch_num = x
    while switch_num <= num_lights
      lights[switch_num] = toggle_switch(lights[switch_num])
      switch_num += x
      #binding.pry
    end
  end
  
  lights.select { |light, state| state == "on" }.keys
end
  
p lights(5) == [1, 4]
p lights(10) == [1, 4, 9]
p lights(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]