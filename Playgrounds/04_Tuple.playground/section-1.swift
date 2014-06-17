/************************************
Tuple

temporary group of related values,
unrelated type, "mini-struct"

************************************/

// refresher
let c = 6

()          // empty tuple (void)
(c) == c    // one element tuple is just a simple value
(c,c)       // two-element tuple
(c,c,c)     // three-element tuple

// accessing elements
var tup1 = (5,6)
tup1.0
tup1.1

// named elements
var tup2: (a: Int, b: Int) = (5,6)
tup2.a
tup2.b

// Function paramemeters
func sayHello(params: (guy1:String, guy2:String)) -> String {
    return "Hello \(params.guy1) & \(params.guy2)"
}
sayHello(("Stan", "Laurel"))
