"""
Solution to Project Euler problem by Joseph Jude

Webpage: http://tech.jjude.com/euler
Git Repo: https://github.com/jjude/euler 
 
Problem 003: What is the largest prime factor of the number 600851475143?
WIL: Prime factorization
Ref: https://www.mathsisfun.com/prime-factorization.html
"Prime Factorization" is finding which prime numbers multiply together to make the original number

Logic: Use the example in the above site
Start with 2 as prime
divide the given number
if divisible, divide the quotient again with the prime
if not divisible, increase the prime and divide the number with the prime
repeat until you reach 1
the prime is the largest prime factor of the given number

Ex:
3 largest prime factor of 12
7 largest prime factor of 147
17 is itself the prime factor since it is a prime
6857 largest prime factor of 600851475143
"""

# with recursion

import sys
sys.setrecursionlimit(10000)

def findLargestPrimeFactorOf(number, currentPrime = 2):
  if number <= 1:
    return currentPrime

  if number % currentPrime == 0:
    return findLargestPrimeFactorOf(number / currentPrime, currentPrime)
  else:    
    return findLargestPrimeFactorOf(number, currentPrime + 1)


print(findLargestPrimeFactorOf(600851475143))


# without recursion

p = 2
n = 600851475143

while n > 1:  
  if n % p == 0:
    n = n / p
  else:
    p = p + 1

print p