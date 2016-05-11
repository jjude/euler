/*
Solution to Project Euler problems by Joseph Jude

Webpage: http://tech.jjude.com/euler
Git Repo: https://github.com/jjude/euler

execute with: swift soln.swift
compile with: swiftc soln.swift

Problem 005 : The smallest positive number that is evenly divisible 
              by all of the numbers from 1 to 20
WIL: 
  gcd & lcm
  there are many solutions to the same problem

Playground: http://swiftlang.ng.bluemix.net/#/repl/2eadf9cc1bd3c90ecb7d104f2acc298a521e8210b778603d301ab7c3b4057713
*/

import Foundation
var start = NSDate()

var divisor = 2 //start with 2, as all numbers are divisible by 1
var result = 3

// start with 3, divide the number by 2 to 20
// if it is not evenly divisible, then increment the number and repeat
// if it is evenly divisible by all numbers between 2 to 20, then that
// is the result
while true {
    if result % divisor == 0 {
        divisor = divisor + 1
        if divisor > 20 {
            break
        }
    } else {
        result = result + 1
        divisor = 2
    }
}

print(result)
var end = NSDate()
var timeInterval: Double = end.timeIntervalSinceDate(start)
print("Time to execute bruteforce \(timeInterval * 1000) ms")


//**** 2nd soln with function ****
start = NSDate()
func isDivisableBy2To20(number: Int) -> Bool {
    for index in (2...20) {
        if number % index != 0 {
            return false
        }
    }
    return true
}

result = 20
while true {
    if isDivisableBy2To20(result) {
        print(result)
        break
    } else {
        result = result + 20
    }
}
end = NSDate()
timeInterval = end.timeIntervalSinceDate(start)
print("Time to execute 2nd bruteforce \(timeInterval * 1000) ms")
//*********************

func gcd(firstNumber: Int, _ secondNumber: Int) -> Int {
    var a = firstNumber
    var b = secondNumber
    var t = 0
    while b != 0 {
        t = b
        b = a % b
        a = t
    }
    return a
}

start = NSDate()

result = 2
for index in (2...20){
    result = index / gcd(result,index) * result
}
print(result)
end = NSDate()
timeInterval = end.timeIntervalSinceDate(start)
print("Time to execute with gcd/lcm: \(timeInterval * 1000) ms")