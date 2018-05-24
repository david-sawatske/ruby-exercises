#### Aliquot Sequence ####
# A number's aliquot sum is the sum of all of its factors excluding itself.
#
# For example, the aliquot sum of 10 is: 1 + 2 + 5 = 8
#
# We can use the aliquot sum to define a special sequence, called the
# aliquot sequence. The aliquot sequence of a number begins with the
# number itself. The second number in the sequence is the first number's
# aliquot sum, the third number is the second number's aliquot sum, and
# so on.
#
# For example, the first 4 numbers in the aliquot sequence of 10 are: 10, 8, 7, 1
#
# Write a function that takes in two numbers, base and n, and returns the
# aliquot sequence of length n starting with base.

def aliquot_sequence(number, times)

end

# Examples:
p aliquot_sequence(10, 4)  == [10, 8, 7, 1]
p aliquot_sequence(10, 2)  == [10, 8]
p aliquot_sequence(7, 4) == [7, 1, 0, 0]


















def aliquot_sequence(number, times)
  arr = [number]

  arr << (ali_sum(arr.last).nil? ? 0 : ali_sum(arr.last)) until arr.length == times

  arr
end

def ali_sum(number)
  (1...number).select { |x| number % x == 0 }.reduce(&:+)
end

# *************Previous Answer*****************
def aliquot_sequence(number, times) #
  ret = [number]

  while ret.count < times
    n = ret[-1]

    ret << aliquot(n)
  end

  ret
end

def ali_sum(number)
  fact = []

  for x in 1...number
    fact << x if number % x == 0
  end

  sum = 0

  fact.each do |x|
    sum += x
  end

  sum
end
