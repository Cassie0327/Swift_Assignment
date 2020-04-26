//
//  main.swift
//  Assignment2
//Name: Qian Cai
// NU ID:001389278
//  Created by Qian Cai on 2019/9/23.
//  Copyright © 2019年 Qian Cai. All rights reserved.
//

import Foundation

let student = 25
//1.Declare a constant with a value of 25 and any name of your choice.

var exp:Int=16
//2.Declare a variable explicitly with a value of 16.

var imp=5.2
//3.Declare a variable implicitly with a value of 5.2.

print(Double(exp)+imp)
//4.Print the sum of the values declared in 2) and 3) to the console (Use type casting where necessary).

var str1="Swift"
var str2=str1+"Practice"
//5.Declare a variable of type String with Value “Swift”. Concatenate the string “Practice” with the first string.

var 😀="iPhone"
//6.Declare a variable with the value “iPhone”, and the variable name is an emoji (any emoji of your choice: command + control + space to access emojis)

var 🤗="iPhone\u{301}"
//7.Declare another emoji variable with the value “iPhone\u{301}”

var v=🤗==😀
//8.Declare a variable that stores the value you get after applying the == operator on the emojis declared in 6) and 7).

var someInt=[Int]()
//1.Declare an empty Array of type Int.

var Stringlist:[String]=["one","two","three"]
//2.Declare an empty Array of type String and initialize it with 3 values.

Stringlist.append("String 4")
Stringlist.append("String 5")
//3.Append the array [“String 4” , ”String 5”] to the array declared in 2).

Stringlist.insert("Random", at: 2)
//4.Insert the string “Random” at the 2nd index without overwriting the already existing value (Rearrange the indices).

var list:[Any]=[12,"PewDiePie",true,176.325,"J"]
//5.Declare an array and initialize it with the values [12 , “PewDiePie” , true , 176.325 , “J”].

let a=list.remove(at: 0)
//6.Use remove(at:) to remove any value from the array declared at 5).

var array = [Integer]()
//1.Declare an empty Array of Integers.

array+=[2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83 ,89,97]
//2.Initialize the array with prime numbers between 1 and 100.

var sum=0
for arr in array
{
    print("The prime number is \(arr)")
    sum+=arr
}
print("The sum of all the numbers is \(sum)")
//3.Using the for-in loop print out all the numbers along with the sum of their digits.

var m=0;
repeat{
    array[m]=array[m]+2
    m=m+1
}while m<array.count
//4.Using a repeat while loop add 2 to each number.

let Str="Hello world"
let char=Array(Str)
for (indice,str) in char.enumerated()
{
    print(str,indice)
}
//5.Declare a string and cast it to an Array of characters. Iterate over this array to print out the characters along with their indices.

func add(dou1:Double,dou2:Double)-> Double
{
    return dou1+dou2
}
print(add(dou1: 4.2, dou2: 4.5))
//1.Create a function named “add” that takes two parameters of type double and returns the sum of the two numbers

func multiply(f1:Float,f2:Float)-> Float
{
    return f1*f2
}
print(multiply(f1: 3.534,f2: 4.222))
//2.Create a function name “multiply” that takes two parameters of type Float and returns the product of the two numbers

func maxThree(i1:Int,i2:Int,i3:Int)->Int
{
    var max=i1
    if(max<i2)
    {
        max=i2
    }
    if(max<i3)
    {
        max=i3
    }
    return max
    
}
print(maxThree(i1: 5, i2: 12, i3: 5))
//3.Create a function named “maxThree” that takes three parameters of type int and returns the maximum of the three numbers
//4.Make sure that the three functions created above work by testing them


func grading(grade:Int)-> Character
{
    if(grade<45)
    {
        return "F"
    }
    else if(grade<60&&grade>45)
    {
        return "C"
    }
    else if(grade<80&&grade>60)
    {
        return "B"
    }
    else {return "A"}
}
print(grading(grade: 98))
//1.A school has following rules for grading system: a. Below 45 - F b. 45 to 60 – C c. 60 to 80 - B d. Above 80 - A Write a code block or function that lets you enter a certain score and displays the corresponding grade in the console.

func judge(length:Double,breadth:Double)-> String
{
    if(length==breadth)
    {
        return "Square"
    }
    else{return "Rectangle"}
}
print(judge(length: 5.6, breadth: 4.3))
//2.Write a function to enter the length and breadth of a rectangle. Based on your inputs print “Rectangle” is the values are different or “Square” is they are the same.

var dic=[Int:String]()
//1.Create a dictionary of type [Int:String] where the key will contain an integer value i.e userId for every User and the value will contain the names of the corresponding users.

dic=[001:"Merry",002:"Mark",003:"Cassie"]
//2.Initialize the dictionary with 3 different key/value pairs of your choice.

for dicvalue in dic{
    print("The result is \(dicvalue)")
}
//3.Iterate over the contents of the dictionary to print out the key and the corresponding value for each entry.

for key in dic.keys
{
    print("The key is \(key)")
}
//4.Print only the keys to the console.

dic.updateValue("momo", forKey: 002)
//5.Update the value of a key in the dictionary

typealias MyTuple = (first:String,second:String)
//6.Create a datatype called MyTuple using the typealias feature of swift. It should be a tuple containing 2 Strings (String , String).

let tup=(2,5)
//7.Declare and initialize a tuple with any values of your choice.

print(tup.0)
print(tup.1)
//8.Print both values of the tuple individually in the console.

let optvar:Int?=nil
//1.let optvar : Int = nil  // Correct the error in this line of code.

let unwrapme : String? = nil
if let unwrappedValue = unwrapme
{
    print(unwrapme)
}
//2.let unwrapme : String? = nil let unwrappedValue : String = unwrapme!
//The code snippet shown above will crash. Rewrite it with Optional Binding.

var opt:Int?=100
//3.Declare any optional variable of any type with the Optional keyword.

var value1:Int?
var defaultValue:Int = 8
if let value1=value1
{
    print(value1)
}
else{
    let value2=value1 ?? defaultValue
    print(value2)
}

//4.Print the value of value1 to the console. If it contains nil use assign defaultValue to it

//5-Answer

//   guard let name=txtname.text else
//  {
 //   print("No name provided")
//  }
//  guard let address = txtaddress.text else
//  {
//     print("No address provided")
// }
//   sendToServer(name,address)

//5.Rewrite this piece of code using 2 guard statements.








