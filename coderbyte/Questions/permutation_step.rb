# Have the function permutation_step(num) take the num parameter being passed and return the next number
# greater than num using the same digits. For example: if num is 123 return 132,
# if it's 12453 return 12534. If a number has no greater permutations, return -1 (ie. 999).


def permutation_step(num)
  perms = num.to_s.chars.map {|x| x.to_i}.permutation.to_a.map do |perm_arr|
    perm_arr.map {|x| x.to_s}.join.to_i
  end

  perms.select {|n| n > num}.min.nil? ? -1 : perms.select {|n| n > num}.min
end

p permutation_step(11121)
p permutation_step(41652)
p permutation_step(999)


# highest from the end and move to left of next lowest
