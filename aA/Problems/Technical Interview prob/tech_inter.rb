### INSTRUCTIONS
#
# Welcome to the App Academy technical interview. The interview consists
# of three programming questions of the following 2 types:
#
# 2 Solo Programming
# 1 Pair Programming
#
# You will be allotted 15 minutes for each solo programming question.
# Keep in mind, we accept partial solutions, and overall logic is more
# important to us than perfect syntax, so try not to stress if your
# solution is incomplete or imperfect. Take a deep breath and focus on
# your approach to the next problem.
#
# In pair programming, two programmers work together as they alternate
# between two distinct roles. The DRIVER types at the keyboard, while
# the NAVIGATOR instructs the driver what to type. For this interview,
# we will alternate roles halfway through the pairing problem, to give
# you a chance to both drive and navigate.
#
# The key in both solo and pair programming is communication. We want to
# get a better idea of how you think, so aim to give us a detailed
# explanation of your approach to each problem. We understand that some
# people prefer to talk while they come to a solution, while others
# prefer to walk us through after they've done a bit of work. Either way
# is fine.
#
# We want to evaluate you on your own work, so the interview is
# closed-book. Please do not consult any outside sources: that includes
# other programmers, the internet, and any notes / code you may have
# written previously. Don't run your code in any REPL or interpreter,
# and don't share these questions or your solutions with anyone else.
#
# That said, you may ask your interviewer any questions you may have. We
# are more than happy to help clarify the question or let you know the
# right syntax for the language you're using.
#
# Good luck!

#### Pair Sum ####
# Write a function that accepts an array of numbers and a target.
# Find the pairs of indices whose elements sum to the target.
# No pair should appear twice in the result.

def pair_target(array, target)
    ret = []
    
    i = 0
    while i < array.length
        i2 = 1  # i + 1 
        while i2 < array.length - i     # no - i  
            if array[i] + array[i2] == target  
                 ret << [i, i2]
             end
        
        i2 += 1
        end
    i += 1  
    end
    
    return ret     
end 

p pair_target([1, 3, 0, 2, 1], 3)# == [[0, 3], [1, 2], [3, 4]]

#
# Constraints:
# * Do not use looping constructs other than while loops
# * Do not call any methods on the input array except for [], []=, and length.
#
# Example 1:
# target = 10
# ary = [2, 4, 8]
# pairs = pair_sum(ary, target)
# pairs # => [[0, 2]]
#
# Example 2:
# target = 3
# ary = [1, 3, 0, 2, 1]
# pairs = pair_sum(ary, target)
# pairs # => [[0, 3], [1, 2], [3, 4]]


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

def number_ali(number, times) #
    ret = [number] 
    
    while ret.count < times     
        n = ret[-1]      
        
        ret << aliquot(n)    
    end                                                                             
    
    return ret
end

def aliquot(number)
    fact = []
    
    for x in 1...number  
        if number % x == 0
            fact << x
        end
    end
    
    sum = 0                
    
    fact.each do |x|
        sum += x
    end
    
    return sum    
end 

# Examples:
# aliquot_sequence(10, 4) # => [10, 8, 7, 1]
# aliquot_sequence(10, 2) # => [10, 8]
# aliquot_sequence(7, 4) # => [7, 1, 0, 0]


### Cats 'n Hats ###
# You have 100 cats (You are quite lucky to own so many cats!).

# You have arranged all your cats in a line. Initially, none of your cats
# have any hats. You take 100 rounds walking around the cats, always starting
# at the beginning. Every time you stop at a cat, you put a hat on it if it
# doesn't have one, and you take its hat off if it has one on.

# The first round, you stop at every cat. The second round, you only stop at
# every 2nd cat (#2, #4, #6, #8, etc.). The third round, you only stop at
# every 3rd cat (#3, #6, #9, #12, etc.). You continue this process until the
# 100th round (i.e. you only visit the 100th cat).

# Write a program that prints which cats have hats at the end.

def cat_hat
    cats = Array.new(100, false)
    
    round = 1
    while round <= 100
        
        i = 0
        while i < 100
        
            if i % round == 0
                if cats[i] == false
                    cats[i] = true
                else
                    cats[i] = false
                end
            end
            i += 1
        end
        
    
    round += 1 
    end
    ret = []
    cats.each_with_index do |cat, i|
        if cat == true
            ret << i
        end
    end
    ret
    
end






















