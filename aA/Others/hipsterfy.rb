# Hipsterfy
# ------------------------------------------------------------------------------
# Input is a string containing several words.
# Return a string with the last vowel removed from each word. 'y' is not a vowel.
# If a word has no vowels, don't change it.
#
# hipsterfy("towel flicker banana") => "towl flickr banan"

def hipsterfy(string)
  string.split.map { |word| hip(word) }.join(' ')
end

def hip(word)
  word.reverse.sub(/[aeiou]/, '').reverse
end

puts '-------Hipsterfy-------'
puts hipsterfy('proper') == 'propr'
puts hipsterfy('squeaker') == 'squeakr'
puts hipsterfy('mstrkrft') == 'mstrkrft'
puts hipsterfy('proper tonic panther') == 'propr tonc panthr'
puts hipsterfy('towel flicker banana') == 'towl flickr banan'
puts hipsterfy('runner anaconda') == 'runnr anacond'
puts hipsterfy('turtle cheeseburger fries') == 'turtl cheeseburgr fris'
