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

// Enumeration
let populationForCountry = ["France": 65700, "England": 62200, "Italy": 60920]

for (country, population) in populationForCountry {
    var info = ("\(country)s is home to \(population) people")
    println(info)
}
