// Playground - noun: a place where people can play

// Functions and closures

import UIKit

var str = "Hello, playground"

func greet(name: String, day: String) ->String{
    return "Hello \(name), to day is \(day)"
}

greet("Bob", "Tuesday")

// ********

func calculatestatistics( scores: [Int]) -> (min: Int, max: Int, sum: Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores{
        if score > max{
            max = score
        } else if score < min{
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}

let statistics = calculatestatistics([5,3,100,3,9])

statistics.sum

statistics.2

// ********

func sumOf (numbers: Int...) -> Int{
    var sum = 0
    for number in numbers{
        sum += number
    }
    return sum
}

sumOf()

sumOf(42, 597, 12)

// ********

func returnFifteen () -> Int{
    var y = 10
    func add (){
        y += 5
    }
    add()
    return y
}

returnFifteen()


// ********

func makeIncrementer() -> (Int -> Int){
    func addOne(number:Int) -> Int{
        return 1 + number
    }
    return addOne
}

var increment = makeIncrementer()
increment(7)

// ********

func hasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool{
    for item in list{
        if condition(item){
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool{
    return number < 10
}

var numbers = [20,19,7,12]

hasAnyMatches(numbers, lessThanTen)

// ********

numbers.map({
    (number: Int) -> Int in let result = 3*number
    return result
})

// ********

let mappedNumbers = numbers.map({ number in 3 * number })

mappedNumbers

let sortedNumbers = sorted(numbers)

// so hard //























