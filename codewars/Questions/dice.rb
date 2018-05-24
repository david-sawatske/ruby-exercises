# Greed is a dice game played with five six-sided dice. Your mission, should you choose to accept it,
# is to score a throw according to these rules. 
# You will always be given an array with five six-sided dice values.

 # Three 1's => 1000 points
 # Three 6's =>  600 points
 # Three 5's =>  500 points
 # Three 4's =>  400 points
 # Three 3's =>  300 points
 # Three 2's =>  200 points
 # One   1   =>  100 points
 # One   5   =>   50 point


def score(dice)
 
end

puts score( [2, 4, 4, 5, 4] ) == 450
puts score( [2, 2, 2, 3, 3] ) == 200
puts score( [5, 1, 3, 4, 1] ) == 250
puts score( [1, 1, 1, 3, 1] ) == 1100
puts score( [2, 4, 4, 5, 4] ) == 450
puts score( [2, 3, 3, 4, 3] ) == 300
puts score( [1, 1, 3, 5, 5] ) == 300


















def score(dice)   
  sum = 0

  for x in 1..6
    if x == 1
      sum += dice.count(x) / 3 * 1000 + dice.count(x) % 3 * 100
    elsif x == 5
      sum += dice.count(x) / 3 * 500 + dice.count(x) % 3 * 50
    else 
      sum += dice.count(x) / 3 * x * 100         # the else take all non 1 or 5 values in 1..6
    end
  end

  sum  
end