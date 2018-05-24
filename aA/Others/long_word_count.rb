# Long Word Count
# ------------------------------------------------------------------------------
# Return the number of words longer than 7 characters
# "cat cactus balderdash phenomenon amazon" has two words over 7 characters long
# "balderdash" and "phenomenon"
# long_word_count("cat cactus balderdash phenomenon amazon") => 2

def long_word_count(text)
  text.split.select { |word| word.length > 7 }.count
end

puts '-------Long Word Count-------'
puts long_word_count('') == 0
puts long_word_count('short words only') == 0
puts long_word_count('one reallylong word') == 1
puts long_word_count('two reallylong words inthisstring') == 2
puts long_word_count('seventy schfifty five') == 1
