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

// Let's talk about another important concept now, ^^^ Optional ^^^
var myOptionalString: String? = "This optional string is not nil!!!"
print(myOptionalString == nil)

var optionalName: String? = nil
var greetingWords = "Hello"

if let name = optionalName {
    greetingWords += " \(name)"
    print(greetingWords)
} else {
    // Notice: You cannot use the variable "name" here, it does not exist in the else block.
    print("Sorry, the optional variable is nil.")
}

let informalGreeting = "Hi, \(optionalName ?? "customer"). Nice to meet you!"
print(informalGreeting)

let vegetable = "some veg, haha"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber":
    print("That would be a good sandwich!")
case let x where x.hasSuffix("pepper"):
    print("\(x) must be really spicy!")
default:
    print("That's even not a vegetable.")
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

for (type, numbers) in interestingNumbers {
    var largest = Int.min
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
    print("The largest \(type) is \(largest)")
}

var m = 2
while m < 100 {
    m *= 2
}

var n = 3
repeat {
    n *= 3
} while n < 100

var total = 0
for i in 0..<4 {
    total += i
}
print("The sum of [0, 4) is \(total)")

total = 0
for i in 0...4 {
    total += i
}
print("The sum of [0, 4] is \(total)")











