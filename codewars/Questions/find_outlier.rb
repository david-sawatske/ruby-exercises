# You are given an array (which will have a length of at least 3, but could be very large) containing integers. 
# The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. 

# Write a method that takes the array as an argument and returns N.


def find_outlier(integers)

end

p find_outlier([1, 2, 3]) == 2
p find_outlier([2,6,8,10,3]) == 3





































 
def find_outlier(integers)
  integers.partition(&:odd?).find(&:one?).first            # #find returns the first instance that is true.  #map returns all
end

integers.partition(&:odd?)#.find(&:one?).first  
p find_outlier([2,6,8,10,3] # ==> [[3], [2, 6, 8, 10]]

integers.partition(&:odd?).find(&:one?)#.first  
# ==> [3]

integers.partition(&:odd?).find(&:one?)[0]  
# ==> 3

def find_outlier(integers)
  
  if integers.select {|x| x.even?}.count > 1
    integers.each do |y|
      return y if y.odd?
    end
  else
    integers.each do |z|
      return z if z.even?
    end

  end

end

