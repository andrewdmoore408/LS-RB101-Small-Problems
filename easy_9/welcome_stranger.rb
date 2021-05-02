=begin
Problem

Welcome Stranger

Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title and occupation.

  Input(s): Array (2+ elements) and a hash ( title: String, occupation: String )
  Output(s): String of text which combines the array into a full name and also mentions the title and occupation given in the hash
  
  Explicit Rules:
    Combine the array elements to make a full name.
    Output the full name and also mention the title and occupation passed in as args in the hash
  Implicit Rules:
    No concern regarding return value—this is a side-effect method.
  
  Questions?

  Notes/Thoughts
  
Examples/Test Cases

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.

Data Structures

Array
Hash

Algorithms

Combine the array elements to make a name with spaces (using #join)
Construct and output a string using the new full name string and the title and occupation passed inside the hash

=end

def greetings(names_arr, title_and_occupation)
  full_name = names_arr.join(' ')
  
  "Well hot dog, it's #{full_name}! Good thing we now have a " +
  "#{title_and_occupation[:title]} #{title_and_occupation[:occupation]} " +
  "in the house."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }) 
# => Hello, John Q Doe! Nice to have a Master Plumber around.