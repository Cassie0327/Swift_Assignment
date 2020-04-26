//
//  main.swift
//  Assignment3
//
//  Created by Qian cai on 2019/10/3.
//  Copyright © 2019年 Qian Cai. All rights reserved.
//

//Exercise: Swift Classes
class Animal {
    var name:String
    var age:Int?
    var weight:Double?
    init(name:String) {
        self.name=name
    }
}
let a=Animal(name:"cat")
print(a.name)
class Dog:Animal
{
}
let d=Dog(name:"dog")
print(d.name)
let an1=Animal(name:"Merry")
print(an1.name)
let an2=an1
print(an2.name)
an1.name="Cassie"
print(an1.name)

//Exercise: Enum
enum Signal
{
    case green
    case yellow
    case red
}
func takeAction(for signal:Signal)
{
    switch  signal{
    case Signal.green:
        print("Go")
    case Signal.yellow:
        print("Slow down.")
    case Signal.red:
        print("Stop.")
    }
}

//Exercise: Structures

struct Rectangle{
    var length:Double
    var width:Double
    init(length:Double,width:Double) {
        self.length=length
        self.width=width
    }
}
var rec1=Rectangle(length:11.5,width:6.7)
print(rec1.length)
var rec2=rec1
print(rec2.length)
rec1.length=15.5;
print(rec1.length)

//Exercise: Protocols
protocol Vehicle {
  func brand()
 func color()
}
class car: Vehicle {
    func brand() {
        print("The brand of car is AUDI")
    }
    func color() {
        print("The color of car is red")
    }
}

//Exercise: Extensions
extension Rectangle
{
    func cal()-> Double
    {
        return self.length*self.width
    }
}
let rec=Rectangle(length:5.2,width:3.2)
print(rec.cal())


//Exercise: Subscripts
struct CircleAreaCalculator {
subscript(index: Double) -> Double
{
    return index*index*3.14
    }
}
let calCircleArea = CircleAreaCalculator()
print("The area of a circle with radius of 2 is:\(calCircleArea[2])")









