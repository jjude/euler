/*
Solution to Project Euler problems by Joseph Jude

Webpage: http://tech.jjude.com/euler
Git Repo: https://github.com/jjude/euler 

execute with: tsc soln.ts && node soln.js

Problem 004: Find the largest palindrome made from the product of two 3-digit numbers.
WIL: reversing a string
*/

var answer = 0
var k = 0

for (var i = 100; i < 1000; i++) {
  for (var j = i; j < 1000; j++) {
    k = i * j
    var kstr = k.toString()
    var reversed = kstr.split("").reverse().join("")
    if ((reversed == kstr) && (k > answer)) {
      answer = k
    }
  }
}

console.log(answer)