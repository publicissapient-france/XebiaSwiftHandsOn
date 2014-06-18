/************************************
Pattern Matching

    test the structure of values

************************************/

func multiReturn() -> (Int, Int) {
    return (5, 6)
}

let (_, a) = multiReturn()  // destructuring
a


// Switch statement
//      exaustive, no implicit fallthrough (no need for 'break')
//

// Basic
let c = 6
var response: Int
switch c {
    case 1: response = 1
    case 2: response = 2
    
    case 3,4,5: response = 10
    
    case 6..9: response = 11
    case 10...20: response = 20
    
    default: response = 100
}

// Enum
enum Direction {
    case North, South, East, West
}

let direction = Direction.South
switch direction {
    case .North: response = 27
    case .South: response = 28
    case .East: response = 29
    case .West: response = 30
}

// Tuple
let color = (0.0, 0.7, 0.3, 1.0)        // RGBA

switch color {
    case (0.0, 0.5...1.0, let blue, _):
        println("Some shade of blue: \(blue)")

    default:
        response = 0
}



// Where clause
var answer: String?

let color2 = (0.7, 0.7, 0.7, 1.0)
switch color2 {
    case let (r, g, b, 1.0) where r == g && g == b:
        println("Some shade of gray \(r)")
    
    default:
        answer = nil
}

