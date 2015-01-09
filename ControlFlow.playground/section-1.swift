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
    case let x where x.hasSuffix("pepper")
        let vegetableComment = " Is it a spicy \(x)"
default:
    let vegetableComment = "Everything tastes good in soup"
}

// ********

let interestingNumbers = [ "Prime": ]




















