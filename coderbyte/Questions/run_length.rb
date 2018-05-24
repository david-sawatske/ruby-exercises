# This algorithm works by taking the occurrence of each
# repeating character and outputting that number along with
# a single character of the repeating sequence.
# For example: "wwwggopp" would return 3w2g1o2p.
# The string will not contain any numbers, punctuation,
# or symbols.

# Input:"aabbcde"
# Output:"2a2b1c1d1e"

# Input:"wwwbbbw"
# Output:"3w3b1w"


def run_length(str)

end




puts run_length("wwwsffssfs")
puts run_length("mouses")
puts run_length("yesssssnomaybe")


















# def run_length(str)
#   count = 1
#   result = ""

#   i = 0
#   while i < str.length
#     if str[i + 1] == str[i]
#       count += 1
#     else
#       result << count.to_s + str[i]
#       count = 1  #resets count to 1
#     end

#   i += 1
#   end

# return result
# end
# puts run_length("aabbcd")
# puts run_length("wwwbbbw")


# def run_length(str)
#   comp =[]

#   str.each_char do |x|
#     if str[str.index(x) - 1] != x
#       comp << str.count(x) << x
#     end
#   end


# return comp.join("").to_s
# end

# puts run_length("wwwsffssfs")

#  # compressed version of the string For example: "wwwggopp" would return 3w2g1o2p.

#  def run_length(str)
#   comp =[]

#   str.each_char do |x|
#     unless comp.include?([str.count(x), x])
#       comp << [str.count(x), x]
#     end
#   end


# return comp.join("").to_s
# end

# puts run_length("wwwsffssfs")
# puts run_length("mouses")
# puts run_length("yesssssnomaybe")


#  # compressed version of the string For example: "wwwggopp" would return 3w2g1o2p.


#  def run_length(str)
#  comp =[]

#   i= 0
#   while i < str.length
#     count = 1
#     for x in 1..+1.0/0.0
#       until str[i] != str[i + x]
#         count += 1
#       end
#     end

#     comp << [count, str[i]]
#   i += 1
#   end

# return comp.uniq.join("").to_s
# end


# puts run_length("wwwsffssfs")
# puts run_length("mouses")
# puts run_length("yesssssnomaybe")
