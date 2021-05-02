=begin
Problem

Group Anagrams

Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
          
Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:

["demo", "dome", "mode"]
["neon", "none"]
#(etc)

  Input(s): Array of strings
  Output(s): Side-effect: printing lists of words which are anagrams
  
  Explicit Rules:
    Print out groups of words from the input which are anagrams of each other
    Anagrams are words with the same letters as each other but in a different order
  Implicit Rules:
    No letters are repeated in the words in input array
    Words appear in the anagram list in the same order as in the input array
  
  Questions?
  
  Letters are uniq in a word? (Yes, according to test case)

  Notes/Thoughts
  
Examples/Test Cases

Data Structures

Strings
Arrays
Hash

Algorithms

Go through the input array and calculate which anagrams exist
  Save them in a collection
Print out each collection of anagrams

Initialize an empty hash (with [] default value) to track anagrams
Go through each word in the input array
  Sort the word and use the sorted version as the hash key
    Add the word to the hash value
Go through each hash pair and output the value (array of words) if the value.length > 1
  
=end

def anagrams(words)
  anagrams = Hash.new([])
  
  words.each do |word|
    word_symbol = word.chars.sort.join.to_sym
    
    #binding.pry
    
    if anagrams[word_symbol].empty?
      anagrams[word_symbol] = [word]
    else
      anagrams[word_symbol].push(word)
    end

    #binding.pry
  end
  
  anagrams.each do |_, word_list| 
    print word_list.sort if word_list.length > 1
    puts if word_list.length > 1
  end
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

anagrams(words)