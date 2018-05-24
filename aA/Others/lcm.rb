# Return the lowest number which is a multiple of both inputs.
def lcm(a, b)
  (1..a * b).find { |x| x % a == 0 && x % b == 0 }
end

puts '-------Least Common Multiple-------'
puts lcm(2, 3) == 6
p lcm(6, 10) == 30
puts lcm(24, 26) == 312
puts lcm(50, 50) == 50

# *************Alt Answer*****************
def lcm(a, b)
  (1..(a * b)).select { |x| x % a == 0 && x % b == 0 }.min
end
