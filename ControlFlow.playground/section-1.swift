// Playground - noun: a place where people can play

// Control Flow

import UIKit

var str = "Hello, playground"

// ********

let individualScores = [75, 43, 103, 87, 12]

var teamScore = 0

for score in individualScores {
    if score > 50{
        teamScore += 3
    }else{
        teamScore += 1
    }
}

println(teamScore)

// ********

var optinalString: String? = "Hello"

optinalString == nil

var optinalName: String? = "John Appleed"

var greeting = "Hello!"

if let name = optinalName {
    greeting = "Hello, \(name)"
}

// ********

let vegetable = "red pepper"

switch vegetable{
    case "celery":
        let vegetableComment = "Add some raisins and make ants on a logs."
    case "Cucumber", "watercress":
        let vegetableComment = "That would make a good tea sandwich"
    case let x where x.hasSuffix("pepper"):
        let vegetableComment = " Is it a spicy \(x)"
default:
    let vegetableComment = "Everything tastes good in soup"
}

// ********

let interestingNumbers = [ "Prime": [2,3,5,7,11,13], "Fibonaci": [1,1,2,3,5,8], "Square":[1,4,9,16,25] ]

var largest = 0

for (kind, numbers) in interestingNumbers{
    for number in numbers{
        if number > largest{
            largest = number
        }
    }
}

println(largest)

// ********

var n = 2

while n < 100{
    n = n*2
}

println(n)

var m = 2

do{
    m = m*2
} while m < 100

println(m)

// ********

var firstForLoop = 0

for i in 0..<4{
    firstForLoop += i
}

println(firstForLoop)

var secondForLoop = 0

for var i = 0; i < 4; ++i {
    secondForLoop += i
}

println(secondForLoop)

// ******** Have fun ******** \\







































