//: Playground - noun: a place where people can play

import UIKit

let name = "Paul Solt"

// use let instead of var

var name2 = "Paul Smith"
print(name)

// Homework: copy and paste code into iPhone app viewDidLoad:

let age = 29
let favoriteColor = UIColor.blueColor() // .blackColor()

// Create a method
func printHello(name: String) {
//    let isItSnowing = false
    print("Hi", name, "!!!!?! =)")
}

// Call a method
printHello(name)

printHello("Jane Smith")

let smallImage = [#Image(imageLiteral: "Square Row.jpg")#]

let largeImage = [#Color(colorLiteralRed: 0, green: 0, blue: 0, alpha: 1)#]

print("hello")


print("Hi Paul!")

defer {
    print("this is done at the end!")
}

print("at the end of viewDidLoad")






