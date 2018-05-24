# have the function letter_capitalize(str) take the str parameter being passed and
# capitalize the first letter of each word. Words will be separated by only one space.

def letter_capitalize(str)
  str.split.map(&:capitalize).join(' ')
end

p letter_capitalize('i ran there') == "I Ran There"
