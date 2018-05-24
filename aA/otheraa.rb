# Number Counting Sequence
# ------------------------------------------------------------------------------
# The number counting sequence is a sequence of number strings that begins with:
# ["1", "11", "21", "1211", "111221", ...]
#
# "1" is counted as "one 1" or "11", followed by
# "11" which is counted as "two 1s" or "21", followed by
# "21" which is counted as "one 2 and one 1" or "1211", and so on.
#
# It helps to "say it out loud" to describe the item in the sequence.
#
# Given an integer n, generate the n-th element in the number counting sequence.

def number_counting_seq(n)

end



puts "-------Number Counting Sequence-------"
puts number_counting_seq(0) == ""
puts number_counting_seq(1) == "1"
puts number_counting_seq(2) == "11" # one 1 above
puts number_counting_seq(3) == "21" # two 1s above
# ...
puts number_counting_seq(5) == "111221" #the last sequence was one 1, one 2, and two 1s: "1211"
puts number_counting_seq(8) == "1113213211"
puts number_counting_seq(10) == "13211311123113112211"

# Hashtagify
# ------------------------------------------------------------------------------
# Given a sentence string and an array of words, hashtag-ify the words (case-insensitive)
# in the original string and return the updated cool string with hashtags.

def hashtagify(sentence, words)

end

puts "-------Hashtagify-------"
puts hashtagify("coding", ["coding"]) == "#coding"
puts hashtagify("coding is fun", ["coding", "fun"]) == "#coding is #fun"
puts hashtagify("Learned about coding. Coding is fun!", ["coding", "fun"]) == "Learned about #coding. #Coding is #fun!"

# Range Summary
# ------------------------------------------------------------------------------
# Given a sorted array of integers without duplicates, return the start and end
# integers of number ranges found in the array. A number range is considered valid
# when all numbers from start to end are contiguous and only increment by 1.
# Assume all numbers are included as part of a range (no stand alone elements).

def range_summary(array)

end

puts "-------Range Summary-------"
puts range_summary([0, 1]) == [[0, 1]]
puts range_summary([0, 1, 4, 5]) == [[0, 1], [4, 5]]
puts range_summary([0, 1, 3, 4, 6, 7]) == [[0, 1], [3, 4], [6, 7]]
puts range_summary([0, 1, 2, 3, 4, 5, 7, 8, 9, 15, 16]) == [[0, 5], [7, 9], [15, 16]]

# Vigenere Cipher
# ------------------------------------------------------------------------------
# Caesar's cipher takes a word and encrypts it by offsetting each letter in
# the word by a fixed number, the key. For a key of 3, for example:
# a -> d, p -> s, and y -> b
#
# Vigenere's Cipher is a Caesar cipher, but instead of a single key, a sequence
# of keys is used. For example, if we encrypt "bananasinpajamas" with the
# key sequence [1, 2, 3], the result would be "ccqbpdtkqqcmbodt":
#
# Word:   b a n a n a s i n p a j a m a s
# Keys:   1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1
# Cipher: c c q b p d t k q q c m b o d t
#
# Write a method that takes a string and a key-sequence, returning
# the encrypted word.

# We're giving you the alphabet as an array if you need it.
# ------------------------------------------------------------------------------

def vigenere_cipher(string, key_sequence, alphabet)

end

alphabet = ('a'..'b').to_a
puts "----Vigenere cipher----"
puts vigenere_cipher("toerrishuman", [1], alphabet) == "upfssjtivnbo"
puts vigenere_cipher("toerrishuman", [1, 2], alphabet) == "uqftsktjvobp"
puts vigenere_cipher("toerrishuman", [1, 2, 3], alphabet) == "uqhstltjxncq"
puts vigenere_cipher("toarrispirate", [1, 2, 3, 4], alphabet) == "uqdvskvtjtdxf"
puts vigenere_cipher("zzz", [1, 1, 1], alphabet) == "aaa"

# Caesar Guesser
# ------------------------------------------------------------------------------
# Caesar's cipher takes a word and encrypts it by offsetting each letter in
# the word by a fixed number, the key. For a key of 3, for example:
# a -> d, p -> s, and y -> b.
#
# Given that the most common letter in english is 'E', build a decrypter that
# takes an encrypted word, determines the key, and returns the decrypted word.
#
# Strategy: find the most common letter in the encrypted string and assume that it
# should be the letter "e" in the decrypted string. Use this information to
# calculate the key.  Use helper functions to declutter your code.

# We're giving you the alphabet as an array if you need it.
# ------------------------------------------------------------------------------

def caesar_guesser(encrypted_string, alphabet)

end


puts "----Caesar Guesser-----"
puts caesar_guesser("a", alphabet) == "e"
puts caesar_guesser("b", alphabet) == "e"
puts caesar_guesser("ruuauufuh", alphabet) == "beekeeper"
puts caesar_guesser("mnonwmcqntnny", alphabet) == "defendthekeep"
puts caesar_guesser("happdaiawpywga", alphabet) == "letthemeatcake"
puts caesar_guesser("ixxtnnyna", alphabet) == "zookeeper"

# Even Splitters
# ------------------------------------------------------------------------------
# Return an array of characters on which we can split an input string to produce
# substrings of the same length.

# Don't count empty strings after the split.

# Here's an example for "banana":
#
# "banana".split("a") # => ["b", "n", "n"] (all elements same length)
# "banana".split("b") # => ["", anana"] (all elements same length - there's only
# one element "anana" because the empty string doesn't count)
# "banana".split("n") # => ["ba", "a", "a"] (all elements NOT same length)
#
# result: ["b", "a"]
#
# ------------------------------------------------------------------------------

def even_splitters(string)

end

puts "-----Even Splitters----"
puts even_splitters("") == []
puts even_splitters("t") == ["t"]
puts even_splitters("jk") == ["j", "k"]
puts even_splitters("xoxo") == ["x", "o"]
puts even_splitters("banana") == ["b","a"]
puts even_splitters("mishmash") == ["m","h"]
