#### Sequence Search ####
# You are given two strings, a sequence and a key. Write a function that
# determines if the characters of the key appear in order (although not
# necessarily contiguously) in the sequence.
#
# Example:
# sequence_search("arcata", "cat") # => true
# sequence_search("c1a2t3", "cat") # => true
# sequence_search("cta", "cat") # => false
# sequence_search("caat", "cat") # => true
#
# Constraint:
# * You may not use Regular Expressions (RegExp) in your solution.

def sequence_search(seq, key)
  seq.chars.select {|x| key.include?(x)}.combination(key.length).include?(key.chars)
end


p sequence_search("arcata", "cat")  == true
p sequence_search("c1a2t3", "cat")  == true
p sequence_search("cta", "cat") == false
p sequence_search("caat", "cat") #== true
