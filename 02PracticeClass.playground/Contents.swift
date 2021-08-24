import UIKit

var a = 10
var b = 40
var sum = 0
sum = a+b;
print(sum)
//String interpolation
print("The sum is: \(sum)")

//terminator
print("The sum is: ", terminator:"-")
print(sum)

//separator
print(1,2,3)
print(1,2,3, separator:" $ ")

var fName = "John"
var lName = "Smith"
//Smith, John
print(lName, ", ", fName)
print(lName, fName, separator:", ")

//John Smith
print(fName,lName)

//Constants (let) and varibles (var)
var a1 = 20;
var b1 = 20;
a1 = a1-b1;
print(a1, b1)

var radius = 12.0;
let Pi = 3.14
var perimeter = 2 * Pi * radius
print("The perimeter of circle is: \(perimeter)")

var str1 = "bearcat"
var str2 = "northwest"
print(str1,str2)
print(str2,"-",str1)


//Tuple
var httpError  = (errorCode : 404  , errorMessage : "Page Not Found")
print(httpError)
print(httpError.errorCode , terminator : ": ")
print(httpError.errorMessage )

var name = ("John","Smith")
var fname = name.0
var lname = name.1
print(fName , terminator : ", ")
print(lName)
