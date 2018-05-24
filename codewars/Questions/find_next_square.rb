# Complete the findNextSquare method that finds the next integral perfect square after
# the one passed as a parameter. Recall that an integral perfect square is an integer
# n such that sqrt(n) is also an integer.

# If the parameter is itself not a perfect square, than -1 should be returned.
# You may assume the parameter is positive.


def find_next_square(sq)

end


puts "\nnext sq:\n" + "*" * 15 + "\n"
puts find_next_square(11) == -1
puts find_next_square(121) == 144
puts find_next_square(625) == 676
puts find_next_square(319225) == 320356
puts find_next_square(15241383936) == 15241630849





















def find_next_square(sq)
  Math.sqrt(sq) % 1 == 0 ? (Math.sqrt(sq) + 1) ** 2 : -1
end



def find_next_square(sq)
  return false if perf_sq?(sq) != true

  for x in sq + 1..+1.0/0.0
    return x if perf_sq?(x)
  end

end

def perf_sq?(num)
  Math.sqrt(num) % 1 == 0
end
