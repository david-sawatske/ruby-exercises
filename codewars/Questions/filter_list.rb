# In this kata you will create a function that takes a list of non-negative 
# integers and strings and returns a new list with the strings filtered out.

def filter_list(l)

end


puts filter_list([1,2,'a','b']) == [1,2]
puts filter_list([1,'a','b',0,15]) == [1,0,15]
puts filter_list([1,2,'aasf','1','123',123]) == [1,2,123]






































# def filter_list(l)
#   l.reject { |x| x.is_a? String }
# end


# def filter_list(l)
#   result = []
  
#   l.each do |x|
#     if x.is_a?(Integer)
#       result << x
#     end
#   end
   
#   return result
 
# end
