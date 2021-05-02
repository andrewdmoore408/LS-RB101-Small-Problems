=begin
Problem

Now I Know My ABCs

A collection of spelling blocks has two letters per block, as shown in this list:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

  Input(s): string (one word)
  Output(s): boolean
  
  Explicit Rules:
    Given the set of paired letters, check whether the input word uses at most one letter from each pair
  Implicit Rules:
    Empty string will not be passed in as an arg
  
  Questions?

	Notes/Thoughts

  Use nested array with 2-letter arrays each. Find and delete a letter if it's used.
  
  If a letter can't be found, or a subarray's size < 1 at the end, return false; else true.

  Hash...? 

  Need to check for letter being present and also array having > 0 size
  
Examples/Test Cases

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

Data Structures

Array; String

Algorithms

Initialize arr of 2-element arrays, where each subarr contains the two letters from the block

Go through each char in the input
  Does a nested subarr contain its letter?
    If so, delete that letter
      Return false if no letters remain in subarr
    If not, return false
Return true

Helper method
  Check for letter in arr
  Delete if so

  Check whether all sub-arrs have > 0 size
  
=end

def remove_letter(arr, char)
  arr.each do |sub_arr|
    if sub_arr.index(char)
      sub_arr.delete(char)
      return true
    end
  end

  false
end

def empty_blocks?(arr)
  arr.all? do |sub_arr|
    sub_arr.size.positive?
  end
end



def block_word?(word)

  blocks = [ ['B','O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
  ['G', 'T'],['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'], ['V', 'I'],
  ['L', 'Y'], ['Z', 'M'] ]

  word.each_char do |char|
    if remove_letter(blocks, char.upcase)
      next
    else
      return false
    end
  end

  empty_blocks?(blocks)
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true