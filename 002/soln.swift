/*
Solution to Project Euler problems by Joseph Jude

Webpage: http://tech.jjude.com/euler
Git Repo: https://github.com/jjude/euler

execute with: swift soln.swift
compile with: swiftc soln.swift

Problem 002: Sum of even valued Fibonacci numbers less than 4 million
WIL: tuple assignment
*/

var answer = 0
var currentFibonacci = 1
var nextFibonacci = 2

while currentFibonacci <= 4000000 {
  if currentFibonacci % 2 == 0 {
    answer += currentFibonacci
  }
  (currentFibonacci, nextFibonacci) = (nextFibonacci, currentFibonacci + nextFibonacci)
}
print(answer)
// 4613732
