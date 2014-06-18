/************************************
Tuple

temporary group of related values,
unrelated type, "mini-struct"

************************************/

let myVal = 6

()                      // empty tuple (void)
(myVal) == myVal        // one element tuple is just a simple value
(myVal, myVal)          // two-element tuple
(myVal, myVal, myVal)   // three-element tuple

// accessing elements
var tuple = ("a", "b")
tuple.0
tuple.1

// named elements
var molecule: (hydrogen: Int, oxygen: Int) = (2, 1)
molecule.hydrogen
molecule.oxygen

// Function paramemeters
func getPageError() -> (Int, String) {
    return (404, "Not Found")
}
getPageError()

// Enumeration
let populationForCountry = ["France": 65700, "England": 62200, "Italy": 60920]

for (country, population) in populationForCountry {
    var info = ("\(country)s is home to \(population) people")
    println(info)
}
