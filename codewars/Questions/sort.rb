# Simple sort, but this time sort regardless of upper / lower case.

def sort_me(names)
  
end


puts sort_me(["Hello", "there", "I'm", "fine"]) == ["fine", "Hello", "I'm", "there"]

































def sortme(names)
  names.sort_by(&:downcase)
end

def sortme(names)
  names.sort_by {|x| x.downcase}
end
