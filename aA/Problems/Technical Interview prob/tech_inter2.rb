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



#### Unique Items ####
# Write a function that takes in an array. It should return a new array
# containing only the elements that were unique in the original array.
#
# For example:
# ary = [1, 5, 5, 7, 16, 8, 1, 8]
# unique = unique_items(ary)
# unique # => [7, 16]

def unique_items(ary)
    ary.select {|x| ary.count(x) == 1}
end


#### Next Prime ####
# Given an array of numbers, replace each prime number in the array with
# the next prime number, e.g. 7 is replaced by 11.
#
# Constraint: You may not use a library to find prime numbers.
#
# examples:
# next_prime([11,13,17]) #=> [13, 17, 19]
# next_prime([4,6,8,10]) #=> [4,6,8,10]
# next_prime([2,5,4,7]) #=> [3,7,4,11]


def next_prime(array)
    array.map {|num| prime?(num) ? next_prime(num) : num}
end


def next_prime(prime) #named the helper method the same as the original
    ((prime + 1)..+1.0/0.0).find {|x| prime?(x)}
end

def prime?(number)
    (1..number).select {|x| number % x == 0}.count == 2
end

#### Pascal's Triangle ####
# This is an example of Pascal's Triangle:
#
#  depth
#    0   |      1
#    1   |     1 1
#    2   |    1 2 1
#    3   |   1 3 3 1
#    4   |  1 4 6 4 1
#
#
# Pascal's Triangle is a mathematical construct that follows a simple
# rule: each number in the triangle is the sum of the two numbers
# directly above-and-to-the-left and above-and-to-the-right of it.
#
# For example, to find the next row after [1,2,1]:
#
#         1       2       1
#
#     1       3       3       1
#     |       |       |       |
#  (0 + 1) (1 + 2) (2 + 1) (1 + 0)
#
#
# Write a function that will return Pascal's Triangle at the given
# depth. The triangle should be represented as an array of rows.
#
# pascals_triangle(0) => [[1]]
# pascals_triangle(2) => [[1], [1,1], [1,2,1]]
# pascals_triangle(4) => [[1], [1,1], [1,2,1], [1,3,3,1], [1,4,6,4,1]]


def pascals_triangle(num)
    triangle = [[1]]



end

def next_row(ary)  #1 2 1
    row = Array.new(ary.length + 1)
    row[0] = 1
    row[-1] = 1

    i = 1
    while i < ary.length
        n = ary[i] + ary[i - 1]

        row[i] = n

        i += 1
    end

    row
end

# => 1 3 3 1


#### Neighbor Sum ####
# Write a function that takes an array of integers and returns a new array with
# each element replaced by the sum of its neighbors.
#
# short_array = [2, 3, 5]
# neighbor_sum(short_array) #=> [3, 7, 3]
#
# long_array = [7, 4, 2, 9, 3, 5]
# neighbor_sum(long_array) #=> [4, 9, 13, 5, 14, 3]
#
# shortest_array = [1]
# neighbor_sum(shortest_array) #=> [0]


# test = [2, 3, 4, 5]
# neighbor_sum(test) = [3, 6, 8, 4]



def neighbor(arr)
   ret = Array.new(arr.length, 0)
   ret[0] = arr[1]
   ret[-1] = arr[-2]                      #[3, 6, 8, 4]

   (1..arr.length - 2).each do |i|
        ret[i] = arr[i - 1] + arr[i + 1]
   end

    ret   #[3, 6, 8, 4]
end
