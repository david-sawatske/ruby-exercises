# function should return the first pair of two prime numbers spaced with a gap
# of g between the limits m, n if these numbers exist otherwise nil.

def gap(g, m, n)

end

p gap(2, 100, 110) == [101, 103]
p gap(4, 100, 110) == [103, 107]
p gap(6, 100, 110).nil?
p gap(8, 300, 400) == [359, 367]
p gap(10, 300, 400) == [337, 347]
