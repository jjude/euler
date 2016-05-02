# Solution to Project Euler problem by Joseph Jude
# 
# Webpage: http://tech.jjude.com/euler
# Git Repo: https://github.com/jjude/euler 
# 
# Problem 001: Find the sum of all the multiples of 3 or 5 below 1000.
#
# Longer version could be if i % 3 == 0 or i % 5 == 0, which will return 1
# Negating i % 3 or i % 5 produces the same result

answer = 0
for index in range(1000):  
  if not index % 3 or not index % 5:
    answer += index
print answer