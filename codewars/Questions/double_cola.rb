# Sheldon, Leonard, Penny, Rajesh and Howard are in the queue for a "Double Cola"
# drink vending machine; there are no other people in the queue. The first one in
# the queue (Sheldon) buys a can, drinks it and doubles! The resulting two
# Sheldons go to the end of the queue. Then the next in the queue (Leonard) buys
# a can, drinks it and gets to the end of the queue as two Leonards, and so on.

# Write a program that will return the name of a man who will drink the n-th cola.

def whos_next(names, r)
  
end

p whos_next(["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"], 1) =="Sheldon"
p whos_next(["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"], 52)=="Penny"
p whos_next(["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"], 7230702951)=="Leonard"


# if r is in current queue, just get that person (as anybody added with go at end of the queue, after everyone else)
# otherwise process everyone in the queue, resulting in [n1,n1,n2,n2,...,nk,nk] and r=r-=names.size
# exceptio previous step is very slow for big r, fortunately searching r in [n1,n1,n2,n2,...,nk,nk] 
# is identical to searching r/2 in `[n1,n2,...,nk], which is very fast.