/************************
 * Optional
 ***********************/

// Optional
var optionalString: String?
optionalString = "Hello"
optionalString == nil

// Le type optionnel a deux états possibles:
// None and Some

var finalValue:String
switch optionalString {
    case .None:
        finalValue = "No Value"
    
    case .Some(let value):
        finalValue = value
}

// Unwrapping
var optionalStringUnwrapped = optionalString!

//var emptyName: String? = nil
//var emptyNameUnwrapped = emptyName! // Error!

// Unwrapping
var jamiesHand:String? = "hand"
if jamiesHand {
    var jamiesHandUnwrapped = jamiesHand!
    var gotS03E02 = "Jamie has an \(jamiesHandUnwrapped)!"
}

// Unwrapping with binding
var queen:String? = "Queen Elizabeth II"
if let queenUnwrapped = queen {
    var royal = "HRM \(queenUnwrapped)"
}

// Chaining
class Person {
    var name:String?
    
    init(name:String) {
        self.name = name
    }
}

class Movie {
    var title:String?
    var director:Person?
    
    init(title:String, director:Person) {
        self.title = title
        self.director = director
    }
}

var pulpFiction:Movie?
pulpFiction =
    Movie(
        title: "Pulp Fiction",
        director: Person(name: "Quentin Tarantino")
    )

if let directorName = pulpFiction?.director?.name {
    println(directorName)
}
