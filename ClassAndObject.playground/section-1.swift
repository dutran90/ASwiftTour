// Playground - noun: a place where people can play

// Object and class

import UIKit

var str = "Hello, playground"

class Shape{
    
    var numberOfSides = 0
    
    func simpleDecription() -> String{
        
        return "A shape with \(numberOfSides) sides."
        
    }
    
}

var shape = Shape()

shape.numberOfSides = 7

var shapeDecription = shape.simpleDecription()

// ********

class NamedShape {
    
    var numberOfSides: Int = 0
    
    var name: String
    
    init(name: String){
        self.name = name
    }
    
    func simpleDescription() -> String{
        
        return " A shape with \(numberOfSides) sides."
        
    }
    
}

// ********

class Square: NamedShape {
    
    var sideLength: Double
    
    init(sideLength: Double, name: String){
        
        self.sideLength = sideLength
        
        super.init(name: name)
        
        numberOfSides = 4
        
    }
    
    func area() -> Double{
        
        return sideLength * sideLength
        
    }
    
    override func simpleDescription() -> String {
        
        return "A square with sides of length \(sideLength)"
    
    }
    
}

let test = Square(sideLength: 4.0, name: "test my square")

test.area()

test.simpleDescription()

// ********

class EquilateralTriangle: NamedShape {
    
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String){
        
        self.sideLength = sideLength
        
        super.init(name: name)
        
        numberOfSides = 3
        
    }
    
    var perimeter: Double{
        
        get{
            
            return 3.0 * sideLength
            
        }
        
        set{
            
            sideLength = newValue / 3.0
            
        }
        
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)"
    }
    
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")

println(triangle.perimeter)

triangle.perimeter = 9.9

println(triangle.sideLength)

// ********

class TriangleAndSquare {
    
    var triangle: EquilateralTriangle{
    
        willSet{
            square.sideLength = newValue.sideLength
        }
    
    }
    
    var square:Square{
        
        willSet{
            triangle.sideLength = newValue.sideLength
        }
        
    }
    
    init(size:Double, name: String){
        
        square = Square(sideLength: size, name: name)
        
        triangle = EquilateralTriangle(sideLength: size, name: name)
        
    }
    
}

var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")

println(triangleAndSquare.square.sideLength)

println(triangleAndSquare.triangle.sideLength)

triangleAndSquare.square = Square(sideLength: 50, name: "larger square")

println(triangleAndSquare.triangle.sideLength)

// ********

class Counter {
    
    var count: Int = 0
    
    func incrementBy( amount: Int, numberOfTimes times: Int){
        
        count += amount * times
        
    }
    
}

var counter = Counter()

counter.incrementBy(2, numberOfTimes: 7)

// ********

let optinalSquare: Square? = Square(sideLength: 2.5, name: "optional square")

let sideLength = optinalSquare?.sideLength

// begin difficultly






















  
