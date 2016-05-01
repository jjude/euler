# Solution to Project Euler problem 1
# by Joseph Jude
# 
# http://tech.jjude.com/euler
# 

# Find the sum of all the multiples of 3 or 5 below 1000.

# Longer version could be if i % 3 == 0 or i % 5 == 0, which will return 1
# Negating i % 3 or i % 5 produces the same result

n = 0
for i in range(1000):  
  if not i % 3 or not i % 5:    
    n = n + i
print n