# Write a function disemvowel(string), which takes in a
# string, and returns that string with all the vowels removed.
# Treat "y" as a consonant.

def disemvowel(string)

end

puts disemvowel("foobar") == 'fbr'
puts disemvowel("ruby") == 'rby'
puts disemvowel("aeiou") == ''








































def disemvowel(string)
  string.gsub(/[aeiou]/, '')
end


def disemvowel(string)
  dis = ""
  vowel = ["a", "e", "i", "o", "u"]

  string.each_char do |x|
    if vowel.include?(x)
      next
    else
      dis << x
    end
  end

return dis
end
