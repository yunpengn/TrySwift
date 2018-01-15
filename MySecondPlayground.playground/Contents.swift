// Let's start with functions
func greet(person: String, day: String) -> String {
    return "Hello, \(person). Today is \(day)."
}
let sentence = greet(person: "Damith", day: "Monday")
print(sentence)

func autoGreet(_ person: String, on day: String) -> String {
    return "Hello, \(person). Today is \(day)."
}
let anotherSentence = autoGreet("John Smith", on: "Tuesday")
print(anotherSentence)

func scoreStats(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for number in scores {
        if number < min {
            min = number
        }
        
        if number > max {
            max = number
        }
        
        sum += number
    }
    
    return (min, max, sum)
}

let stats = scoreStats(scores: [5, 3, 18, -10, 0])
print("The sum of all scores is \(stats.sum). The maximum score is \(stats.1).")

// Let's explore some higher-order programming here.
func returnFifteen() -> Int {
    var y = 10
    
    func add() {
        y += 5
    }
    
    add()
    return y
}
print(returnFifteen())

// In Swift, functions are a first-class type.
func makeAdder(_ addee: Int) -> ((Int) -> Int) {
    func adder(_ num: Int) -> Int {
        return addee + num;
    }
    
    return adder
}
var fiveAdder = makeAdder(5)
print(fiveAdder(4))

func hasAnyMatches(in list: [Int], by condition: ((Int) -> Bool)) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    
    return false
}

func lessThanTen(_ num: Int) -> Bool {
    return num < 10
}

print(hasAnyMatches(in: [12, 9, 0, -54], by: lessThanTen))

var numbers = [3, 1, 4, 15, 9, 26, 5535, -897, 90, 4, 0]
var newNumbers = numbers.map({(number: Int) -> Int in
    return 0
})
print(newNumbers)

let tripleNumbers = numbers.map({ number in 3 * number })
print(tripleNumbers)

let sortedNumbers = numbers.sorted(by: {$0 < $1})
print(sortedNumbers)





