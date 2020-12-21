# Pseudo code
# 1. Count front moves (f)
# 2. Count back moves (b) 
# 3. Devide by 2 and round to integer
# 4. Compare and return lowest one 

def pageCount(n, p)  
  f = p / 2
  n.even? ? b = (n + 1 - p) / 2 : b = (n - p) / 2

  if (f > b)
    b
  else
    f
  end
end

puts pageCount(16, 7) # => 0
