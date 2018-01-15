var myVariable = 12
myVariable = 42

let myConstant: Double = 30
let myDouble = 70.0
let myAnotherConstant: Float = 4

let myString = "The length of this table is "
let myConversion = myString + String(myDouble)
print(myConversion)

let myAnotherString = "I have a table with the length of \(myConstant) cm."
print(myAnotherString)
print("Thus, I have \(1 + 1) tables in total.")

let multipleLines = """
I have an apple.
I have a pineapple.
I have my CS3217 journey.
"""

var myList = ["Apple", "Banana", "Tomato"]
myList[1] = "Potato"

var jobs = ["Martin": "Professor", "Denna": "Student"]
jobs["Mark"] = "Human Resources Manager"

let myEmptyArray = [String]()
let myEmptyDictionary = [String: Float]()

// We are going to explore things about control flow in Swift now.
// Let's start with if-else statement.

if myVariable > 10 {
    print("Yes, congratulations!")
} else {
    print("Work a bit harder, please.")
}

for fruit in myList {
    print("I have a(n) \(fruit).")
}


