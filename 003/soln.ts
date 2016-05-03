/*
Solution to Project Euler problems by Joseph Jude

Webpage: http://tech.jjude.com/euler
Git Repo: https://github.com/jjude/euler 

execute with: tsc soln.ts && node soln.js

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

var p = 2;
var n = 600851475143;

while (n > 1){
  if (n % p == 0) {
    n = n / p;
  } else {
    p = p + 1
  }
}

console.log(p);