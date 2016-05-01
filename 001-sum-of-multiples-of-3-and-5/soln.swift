// Solution to Project Euler problem 1
// by Joseph Jude
//
// http://tech.jjude.com/euler 
// Find the sum of all the multiples of 3 or 5 below 1000.
//
// execute with
// swift soln.swift
//
// compile with
// swiftc soln.swift

var sum = 0
for index in 1..<1000{
  if (index % 3 == 0) || (index % 5 == 0) {    
    sum = sum + index
  }
}
print(sum)