import UIKit

class Database {
    var shapes: [Shape] = []
    
    func sort() {
        shapes = shapes.sorted(by: { $0.zOrder < $1.zOrder })
    }
    
    func addShape(_ shape: Shape) {
        shapes.append(shape)
    }
    
    func printShapes(){
        sort()
        for shape in shapes {
            shape.display()
        }
    }
}

class Shape {
    let zOrder: Int
    
    init(_ z: Int) {
        zOrder = z
    }
    
    func display(){
        print("Shape: \(zOrder)")
    }
}

class Triangle: Shape {
    override init(_ z: Int) {
        super.init(z)
    }
    
    override func display() {
        print("Triangle: \(zOrder)")
    }
}

class Square: Shape {
    override init(_ z: Int) {
        super.init(z)
    }
    
    override func display() {
        print("Square: \(zOrder)")
    }
}

class Circle: Shape {
    override init(_ z: Int) {
        super.init(z)
    }
    
    override func display() {
        print("Circle: \(zOrder)")
    }
}

var database = Database()

for _ in 0..<10 {
    let triangle = Triangle(Int.random(in: 0..<10000))
    database.addShape(triangle)
}

for _ in 0..<10 {
    let square = Square(Int.random(in: 0..<10000))
    database.addShape(square)
}

for _ in 0..<10 {
    let circle = Circle(Int.random(in: 0..<10000))
    database.addShape(circle)
}

database.printShapes()
