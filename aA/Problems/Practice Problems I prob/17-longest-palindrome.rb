# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substring* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.

def longest_palindrome(string)

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'longest_palindrome("abcbd") == "bcb": ' +
  (longest_palindrome('abcbd') == 'bcb').to_s
)
puts(
  'longest_palindrome("abba") == "abba": ' +
  (longest_palindrome('abba') == 'abba').to_s
)
puts(
  'longest_palindrome("abcbdeffe") == "effe": ' +
  (longest_palindrome('abcbdeffe') == 'effe').to_s
)
