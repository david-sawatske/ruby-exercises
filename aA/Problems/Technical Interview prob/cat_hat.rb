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

end

p cat_hat












def cat_hat
  arr = Array.new(101, false)

  (1..100).each { |round| arr.map!.with_index { |cat, i| i % round == 0 ? !cat : cat } }

  arr.each_index.select { |x| arr[x] == true }
end

# *************Other Method*****************

def cat_hat
  (1..100).select { |x| Math.sqrt(x) % 1 == 0 }
end

# *************Previous Answer*****************
def cat_hat
  cats = Array.new(100, false)

  round = 1
  while round <= 100

    i = 0
    while i < 100

      if i % round == 0
        cats[i] = if cats[i] == false
          true
        else
          false
        end
      end
      i += 1
    end

    round += 1
  end
  ret = []
  cats.each_with_index do |cat, i|
    ret << i if cat == true
  end
  ret
end
