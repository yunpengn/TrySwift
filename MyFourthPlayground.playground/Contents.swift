protocol Testable {
    var name: String { get }
    mutating func test()
}

class Software: Testable {
    var name: String = "This is an awesome software"
    var size: Int = 1048576
    
    // No need to mark as mutating, class method can always modify
    func test() {
        name += "Haha"
        print("Yes, we are using JUnit to test it.")
    }
}

struct Hardware: Testable {
    var name: String = "This is a hardware"
    
    // Have to mark it as "mutating" because we need to do this for a struct.
    mutating func test() {
        name += "Haha"
        print("We are testing a hardware right now.")
    }
}

enum Person: Testable {
    // enums may not contain stored properties.
    // We will use a computed property here instead.
    var name: String {
        get {
            return "Haha, person!"
        }
    }
    
    func test() {
        print("Haha.")
    }
}

extension Int: Testable {
    var name: String {
        return "The number is \(self)"
    }
    
    func test() {
        print("No need to test. This is an integer.")
    }
}

extension Double {
    var absoluteValue: Double {
        return self > 0 ? self : -self
    }
}
// Take note of the brackets around -0.9
print((-0.9).absoluteValue)
print(-0.9.absoluteValue)












