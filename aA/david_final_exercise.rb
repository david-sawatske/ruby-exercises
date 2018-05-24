# Each year, the Census Bureau records the change in the population of puppies. In year zero, if 10 puppies are born and 5 die (sad!), there are 5 more puppies. In year one, if 10 puppies are born and 13 die, there are 3 fewer puppies. An array of changes in puppy populations would look like [5, -3, ...].
#
# I give you an array of annual changes in the puppy population. I want to find the Puppy Golden Age, the years in which the cumulative change in the puppy population was greatest. For instance, if the array is [100, -101, 200, -3, 1000], the Puppy Golden Age existed between years 2 and 4 (representing [200, -3, 1000]), since that's the time period during which the most puppies were born.
#
# Write a method, puppy_golden_age, which should return the start and end indices of the Puppy Golden Age:

def puppy_golden_age(arr)
  puppies = 0  # set the var for puppies born for later comparison
  years = []   # set empty array to later push the results of the comparison

  arr.each_with_index do |x, i| # looping through entire array. could have used #each_index without x.
    for i2 in i + 1...arr.length # set up loop for i2 which is needed to compare all elements in array above i1 and for return of second index. i + 1 protects against the return of the same index twice. see written test 3.
      if puppies < arr[i..i2].reduce(&:+) # comparison of the value puppies with the sum of the elements in arr where index > i.
        puppies = arr[i..i2].reduce(&:+) # if the net gain between these two indices is > the previous value for puppies, the new gain becomes the value
        years = [i, i2] # sets the indicies for the larger gain compared here:  puppies < arr[i..i2].reduce(&:+)
      end
    end
  end

  years # when the loop is complete, the largest gain and their indicies will be set for the variables puppies/ years. question asks for the index of the years.
end

p puppy_golden_age([100, -101, 200, -3, 1000]) == [2, 4]
p puppy_golden_age([5, 3, -5, 1, 19, 2, -4]) == [0, 5]
p puppy_golden_age([100, -101, 2_000_000, -3, -2]) == [0, 2] # not [2, 2]

# combine_arrays
#
# Write a method that takes two sorted arrays and produces the sorted array that combines both.
#
# Restrictions:
#
# Do not call sort anywhere.
# Do not in any way modify the two arrays given to you.
# Do not circumvent (2) by cloning or duplicating the two arrays, only to modify the copies.
# Hint: you will probably need indices into the two arrays.

def combine_arrays(arr1, arr2)
  combo = arr1 + arr2 # and unsorted combo of arr1 and arr2
  length = combo.length
  sort = [] # set up array variable for eventual return.

  while sort.length < length # loops until an equal amount of elements are pushed to sort as exist in combo. this is unncessary.
    combo.each.with_index do |x, i| # loop through all elements in combo. again, could have used #each_index without x.
      if combo[i + 1] != nil && combo[i] > combo[i + 1] # safeguarding against nil comparison, checking if the element above combo[i] is smaller
        combo[i], combo[i + 1] = combo[i + 1], combo[i] # if so, the values are exchanged using the indices within combo.
      end
    end

    sort.unshift(combo.pop) # add as the first element of sort the last element of the already sorted combo array
  end                       # upon review, this may violate the exercises restrictions.

  sort # returns the sorted array after sort.length == combo.length
end

p combine_arrays([1, 3, 5], [2, 4, 6]) == [1, 2, 3, 4, 5, 6]

# below is a similar, more simple solution that meets the question criteria.
# it removes an unncessary loop and variables. adds loop to verify return

def combine_arrays(arr1, arr2)
  combo = arr1 + arr2 # and unsorted combo of arr1 and arr2
  check = true # sets the tesing value to true

  while check # runs loop if check is true
    check = false # for each loop, sets check to. this would stop the loop if combo[i + 1] != nil && combo[i] > combo[i + 1] was not met

    combo.each_index do |i| # loop through all elements in combo. again, could have used #each_index without x.
      if combo[i + 1] != nil && combo[i] > combo[i + 1] # safeguarding against nil comparison, checking if the element above combo[i] is smaller
        combo[i], combo[i + 1] = combo[i + 1], combo[i] # if so, the values are exchanged using the indices within combo.
        check = true # if adjusting was needed, reset check to true so the loop runs again.
      end
    end
  end

  combo # returns the newly sorted array.
end

p combine_arrays([1, 3, 5], [2, 4, 6]) == [1, 2, 3, 4, 5, 6]



# Attempt this after you have the other two problems working.
# Write a method that, given an array of unique items, finds all the subsets of items:
# subsets(["a", "b", "c"]) == [
#   [], # note that the empty set counts!
#   ["a"], ["a", "b"], ["a", "b", "c"], ["a", "c"],
#   ["b"], ["b", "c"],
#   ["c"]
# ]

def subsets(arr)
  comb = [] #set up return array

  for x in 0..arr.length do # gives a value from 0 to arr.length to pass below
    arr.combination(x) {|y| comb << y} # pushes to the return all of the possible combinations of the array
  end                                  # the x insures that all possible lengths of combinations are returned.

  comb # returns all combinations
end

p subsets(["a", "b", "c"]) == [[], ["a"], ["b"], ["c"], ["a", "b"], ["a", "c"], ["b", "c"], ["a", "b", "c"]]
