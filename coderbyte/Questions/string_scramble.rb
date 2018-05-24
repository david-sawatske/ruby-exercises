# Have the function string_scramble(str1,str2) take both parameters being passed and return
# the string true if a portion of str1 characters can be rearranged to match str2,
# otherwise return the string false. For example: if str1 is "rkqodlw" and str2 is "world"
# the output should return true.
# Punctuation and symbols will not be entered with the parameters.

def string_scramble(str1, str2)
  str2.chars.all? { |x| str1.count(x) >= str2.count(x) }
end

puts string_scramble('rkqodlw', 'world') == true
puts string_scramble('apdfs', 'pass') == false

# def string_scramble(str1,str2)
#   str2.each_char do |x|
#     if str1.include?(x) && str1.scan(x).count >= str2.scan(x).count
#       next
#     else
#       return false
#     end
#   end

#   true
# end
