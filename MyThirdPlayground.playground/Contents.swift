class Shape {
    var numberOfSides = 0
    
    func simpleIntro() -> String {
        return "This is a shape with \(numberOfSides) side(s)."
    }
}
let myFirstShape = Shape()
print(myFirstShape.simpleIntro())
myFirstShape.numberOfSides = 1
print(myFirstShape.simpleIntro())

class NamedShape {
    var numberOfSides = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleIntro() -> String {
        return "This is a \(name) shape with \(numberOfSides) side(s)."
    }
}
let myNamedShape = NamedShape(name: "triangle")
myNamedShape.numberOfSides = 3
print(myNamedShape.simpleIntro())

class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleIntro() -> String {
        return "This is a square named as \(name), with an area of \(area())."
    }
}
let mySquare = Square(sideLength: 4.5, name: "super hero")
print(mySquare.simpleIntro())

class EquilateralTriangle: NamedShape {
    var sideLength: Double
    
    var perimeter: Double {
        get {
            return 3 * sideLength
        }
        
        set {
            // Notice: newValue is an implicit parameter for setter method
            sideLength = newValue / 3
        }
    }
    
    init(sideLength: Double) {
        self.sideLength = sideLength
        super.init(name: "Equilateral Triangle")
        numberOfSides = 3
    }
    
    override func simpleIntro() -> String {
        return "A Equilateral Triangle with side length of \(sideLength)"
    }
}
let myTriangle = EquilateralTriangle(sideLength: 13.45)
print(myTriangle.perimeter)

class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        // This is like callback feature in other languages. For example, it is equivalent to before_save in Ruby on Rails
        willSet {
            square.sideLength = newValue.sideLength
        }
        
        // It is equivalent to after_save in Ruby on Rails
        didSet {
            print("Hey! You change the value of side length.")
        }
    }
    
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size)
    }
}
var something = TriangleAndSquare(size: 5.5, name: "some triangle and some square")
something.triangle = EquilateralTriangle(sideLength: 10)
print(something.square.sideLength)

let optionalSquare: Square? = Square(sideLength: 2.5, name: "an optional square")
var optionalSideLength = optionalSquare?.sideLength
print(optionalSideLength!)

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleIntro() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.ace
let aceRawValue = ace.rawValue
print("This is \(ace) with raw value of \(aceRawValue)")

if let convertedRank = Rank(rawValue: 3) {
    print(convertedRank.simpleIntro())
}

enum Suit {
    case spades, hearts, diamonds, clubs
    
    func simpleIntro() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
}

let heart = Suit.hearts
print(heart.simpleIntro())

enum ServerResponse {
    case result(String, String)
    case failure(String)
}

let success = ServerResponse.result("6:00 am", "5:45 pm")

switch success {
case let .result(sunrise, sunset):
    print("Sunrise time is \(sunrise), sunset time is \(sunset)")
case let .failure(info):
    print("the service fails due to \(info)")
}

struct Card {
    let rank: Rank
    let suit: Suit
    
    func simpleIntro() -> String {
        return "This is a card of \(rank.simpleIntro()) with \(suit.simpleIntro())."
    }
}

let myCard = Card(rank: Rank.jack, suit: Suit.diamonds)
print(myCard.simpleIntro())








