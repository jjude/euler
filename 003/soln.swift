/*
Solution to Project Euler problems by Joseph Jude

Webpage: http://tech.jjude.com/euler
Git Repo: https://github.com/jjude/euler

execute with: swift soln.swift
compile with: swiftc soln.swift

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
*/

// using recursion

var currentPrime = 2

func findLargestPrimeFactorOf(number: Int) -> Int {
  if number <= 1 {
    return currentPrime
  }

  if number % currentPrime == 0 {
    return findLargestPrimeFactorOf(number / currentPrime)
  } else {
    currentPrime += 1
    return findLargestPrimeFactorOf(number)
  }
}

print(findLargestPrimeFactorOf(600851475143))
// 6857


// without recursion

var currentPrime = 2
var numberToFactor = 600851475143

while numberToFactor > 1 {
  if numberToFactor % currentPrime == 0 {
    numberToFactor = numberToFactor / currentPrime
  } else {
    currentPrime += 1
  }
}

print(currentPrime)