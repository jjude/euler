# Solution to Project Euler problem by Joseph Jude
# 
# Webpage: http://tech.jjude.com/euler
# Git Repo: https://github.com/jjude/euler 
# 
# Problem 002: Sum of even valued Fibonacci numbers less than 4 million
# WIL: tuple assignment

answer = 0
current_fibonacci = 1
next_fibonacci = 2

while current_fibonacci <= 4000000:
  if current_fibonacci % 2 == 0:
    answer += current_fibonacci
  # generate the next numbers
  current_fibonacci, next_fibonacci = next_fibonacci, current_fibonacci + next_fibonacci

print answer
# 4613732
