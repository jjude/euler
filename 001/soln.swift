/*
Solution to Project Euler problems by Joseph Jude

Webpage: http://tech.jjude.com/euler
Git Repo: https://github.com/jjude/euler

execute with: swift soln.swift
compile with: swiftc soln.swift

Problem 001: Find the sum of all the multiples of 3 or 5 below 1000
*/

var sum = 0
for index in 1..<1000 {
  if (index % 3 == 0) || (index % 5 == 0) {
    sum += index
  }
}
print(sum)
