"""
Solution to Project Euler problem by Joseph Jude

Webpage: http://tech.jjude.com/euler
Git Repo: https://github.com/jjude/euler 
 
Problem 004: Find the largest palindrome made from the product of two 3-digit numbers.
WIL: reversing a string
"""

answer = 0
for i in xrange(999, 100, -1):
  for j in xrange(i, 100, -1):
    k = i * j
    s = str(k)
    if s == s[::-1] and k > answer:      
      answer = k

print answer