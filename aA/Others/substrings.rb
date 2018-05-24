### Substrings and Subwords
#
# Write a method, `substrings`, that will take a `String` and return an
# array containing each of its substrings. Don't repeat substrings.
# Example output: `substrings("cat") => ["c", "ca", "cat", "a", "at",
# "t"]`.
#
# Your `substrings` method returns many strings that are not true English
# words. Let's write a new method, `subwords`, which will call
# `substrings`, filtering it to return only valid words. To do this,
# `subwords` will accept both a string and a dictionary (an array of
# words).

def substrings(string)
   subs = []
   i = 0
   while i < string.length - 1
       j = i
       while j < string.length - 1
           subs << string[i..j] unless subs.include? string[i..j]
           j += 1
       end
       i += 1
   end
   subs
end

def subwords(word, dictionary)
   valid_words = []
   substrings(word).each do |w|
       if dictionary.include? w then
           valid_words << w
       end
   end
   valid_words
end
