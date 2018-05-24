# A string is considered to be in title case if each word in the string is either (a) capitalised (that is, only the first letter of the word 
# is in upper case) or (b) considered to be an exception and put entirely into lower case unless it is the first word, which is always capitalised.

# Write a function that will convert a string into title case, given an optional list of exceptions (minor words).
# The list of minor words will be given as a string with each word separated by a space. 

# Your function should ignore the case of the minor words string -- it should behave in the same way even if the case of 
# the minor word string is changed.



def title_case(title, minor_words='')

end

puts title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
puts title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
puts title_case('the quick brown fox') == 'The Quick Brown Fox'
puts title_case('First a of in', 'an often into') == 'First A Of In'
































def title_case(title, minor_words = '')
  title.capitalize.split().map{|a| minor_words.downcase.split().include?(a) ? a : a.capitalize}.join(' ')
end

def title_case(title, minor_words='')
  minor_words = minor_words.downcase.split(' ')
  title.capitalize.split(' ').map { |word| minor_words.include?(word.downcase) ? word : word.capitalize }.join(' ')
end