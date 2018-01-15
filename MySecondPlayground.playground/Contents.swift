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
    
}
