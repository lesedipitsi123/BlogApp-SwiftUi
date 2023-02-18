import SwiftUI

let primes = [1, 3, 5, 7, 11, 15, 17, 19, 23]
let autoGen : [String] = ["a", "b", "c"]

switch primes[1] {
case 3:
    print("I love the number 3 too <3")
default:
    print("Oopsie woopsie")
}

if primes[1] == 3 , primes[0] == 1 {
    print("these are the first two primes")
}

for i in primes {
    print("Prime: \(i)")
}

var underConstruction = 0
var i = 0
while(underConstruction < 23) {
    
    underConstruction = primes[i]
    i = i + 1
}

print("end game")
