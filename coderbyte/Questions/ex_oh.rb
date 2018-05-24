# ex_oh(str) take the str parameter being passed and return the string true if
# there is an equal number of x's and o's, otherwise return the string false.
# Only these two letters will be entered in the string, no punctuation or numbers.

def ex_oh(str)
  str.count('x') == str.count('o')
end

p ex_oh('xooxxxxooxo') == false
p ex_oh('xooxxxooxo') == true
