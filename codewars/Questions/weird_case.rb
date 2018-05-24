# Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and returns the
# same string with all even indexed characters in each word upper cased, and all
# odd indexed characters in each word lower cased. The indexing just explained is zero
# based, so the zero-ith index is even, therefore that character should be upper cased.

# The passed in string will only consist of alphabetical characters and spaces(' '). Spaces will only be
# present if there are multiple words. Words will be separated by a single space(' ').

def weirdcase(string)
  string.split.map {|word| word.chars.map.with_index {|x, i| i.odd? ? x.downcase : x.upcase}.join }.join(' ')
end


puts weirdcase("Weird") == "WeIrD"
puts weirdcase("this is a tEst") == "ThIs Is A TeSt"



















def weirdcase(string)
  string.split.map {|word| word.chars.map.with_index {|x, i| i.even? ? x.upcase : x.downcase}.join}.join(" ")
end


def weirdcase(string)
  words = string.split(" ")

  words.each do |word|
    word.split("").each_with_index {|x, i| i.even? ? word[i] = word[i].upcase : word[i] = word[i].downcase}.join("")
  end

  words.join(" ")
end


def weirdcase(string)
  string.split(' ').map do |word|
    word.split('').each_with_index.map do |char, i|
      i % 2 == 0 ? char.upcase : char.downcase
    end.join('')
  end.join(' ')
end




def weirdcase(string)
  result = []

  string.split(" ").each do |word|

    i = 0
    while i < word.length

      if i % 2 == 0
        word[i] = word[i].upcase
      else
        word[i] = word[i].downcase
      end

      i += 1
    end

    result << word
  end

return result.join(" ")
end
