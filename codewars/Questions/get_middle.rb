# You are going to be given a word. Your job is to return the middle character
# of the word. If the word's length is odd, return the middle character.
# If the word's length is even, return the middle 2 characters.

def get_middle(s)
  s.length.odd? ? s[s.length / 2] : s[s.length / 2 - 1] + s[s.length / 2]
end



puts get_middle("test") == "es"
puts get_middle("testing") == "t"
puts get_middle("middle") == "dd"
puts get_middle("A") == "A"


























def getMiddle(s)
  s.length.even? ? s[s.length / 2 - 1] + s[s.length / 2 ] : s[s.length / 2]
end
