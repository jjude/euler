/*
Solution to Project Euler problems by Joseph Jude

Webpage: http://tech.jjude.com/euler
Git Repo: https://github.com/jjude/euler 

execute with: tsc soln.ts && node soln.js

Problem 002: Sum of even valued Fibonacci numbers less than 4 million
WIL: tuple assignment
*/

var answer = 0;
var current_fibonacci = 1
var next_fibonacci = 2

while (current_fibonacci <= 4000000) {
  if (current_fibonacci % 2 == 0) {
    answer += current_fibonacci;
  }
  [current_fibonacci, next_fibonacci] = [next_fibonacci, current_fibonacci + next_fibonacci]   
}
console.log(answer)
// 4613732
