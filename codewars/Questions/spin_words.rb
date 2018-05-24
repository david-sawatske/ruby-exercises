# Write a function that takes in a string of one or more words, and returns 
# the same string, but with all five or more letter words reversed 
# Strings passed in will consist of only letters and spaces. 
# Spaces will be included only when more than one word is present.

def spinWords(string)
  
end


puts spinWords("Hey fellow warriors") == "Hey wollef sroirraw"
puts spinWords("This is a test") == "This is a test"
puts spinWords("This is another test") == "This is rehtona test"























# def spinWords(string)
#   string.split.map { |s| s.length >= 5 ? s.reverse : s }.join ' '
# end



# def spinWords(string)
#   words = string.split
#   result = []

#   words.map do |word|
   
#     if word.length >= 5
#       word.reverse!
#     else
#       word
#     end
#   end

#   return words.join(" ").to_s
# end

