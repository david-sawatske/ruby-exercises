# Given two arrays of strings a1 and a2 return a sorted array r
# in lexicographical order of the strings of a1 which are substrings of strings of a2.


def in_array(array1, array2)
  
end




puts in_array(["arp", "strong", "live"], ["lively", "alive", "harp", "sharp", "armstrong"]) == ["arp", "live", "strong"]























def in_array(array1, array2)
  array1.select{|s| array2.any?{|w| w.include?(s) } }.sort
end




def in_array( needles, haystack)
  needles.select {|needle| in_haystack?(needle, haystack)}.sort
end

def in_haystack?( needle, haystack )
  haystack.any? {|hay| hay.include?(needle)}
end
