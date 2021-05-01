=begin
Problem

Madlibs

Mad libs are a simple game where you create a story template with blanks for words. You, or another player, then construct a list of words and place them into the story, creating an often silly or funny story as a result.

Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

  Input(s): 4 strings (input by user at 4 separate prompts)
  Output(s): String/block of text (with the 4 input strings interpolated 
  
  Explicit Rules:
    Prompt user for 4 strings (noun, verb, adverb, and adjective)
    Return a story with those strings interpolated within the text
  Implicit Rules:
  
  Questions?

  Notes/Thoughts
  
Examples/Test Cases

Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

Data Structures

Strings
Hash

Algorithms

Initialize a hash to store user's words
Prompt the user in turn for noun, verb, adj, and adverb, and store pointers to those objects in hash
Create and output a string which interpolates the user's words at specific places in the story

Helper method: initialize the hash and prompt user for words, then return the constructed hash for use in outputting the story

=end

def get_user_words
  user_words = { noun: nil, verb: nil, adjective: nil, adverb: nil }
  
  user_words.each_key do |part_of_speech|
    article = (part_of_speech.to_s.start_with?("a") ? "an" : "a")
    puts "Enter #{article} #{part_of_speech}:"
    user_words[part_of_speech] = gets.chomp
    puts
  end
  
  user_words
end

def madlibs
  user_words = get_user_words
  
  puts "It's important to note that many people #{user_words[:verb]} #{user_words[:adverb]} with their #{user_words[:noun]}. Very #{user_words[:adjective]}, don't you agree?"
end

madlibs()
