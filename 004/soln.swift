/*
Solution to Project Euler problems by Joseph Jude

Webpage: http://tech.jjude.com/euler
Git Repo: https://github.com/jjude/euler

execute with: swift soln.swift
compile with: swiftc soln.swift

Problem 004: Find the largest palindrome made from the product of two 3-digit numbers.
WIL: 
  reverse for loop (there is .reverse() and stride())
  double for loop in swift is slow, pathetically slow
*/

var answer = 0
var k = 0
var s = ""

var i = 100
var j = 100

while i < 1000 {
  while j < 1000 {
    k = i * j
    s = String(k)
    if s == String(s.characters.reverse()) && k > answer {
      answer = k
    }
    j += 1
  }
  i += 1
  j = 100
}

print(answer)
//906609