/*
Solution to Project Euler problems by Joseph Jude

Webpage: http://tech.jjude.com/euler
Git Repo: https://github.com/jjude/euler 

execute with: tsc soln.ts && node soln.js

Problem 001: Find the sum of all the multiples of 3 or 5 below 1000
*/

var sum = 0;
for (var i = 0; i <= 1000; i++){
    if (i % 3 == 0 || i % 5 == 0){
        sum = sum + i;   
    }
}
console.log(sum);