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

var emtpyName: String? = nil
var emptyNameUnwrapped = emtpyString! // Error!

// Unwrapping
if optionalString {
    var unwrapped = optionalString!
    var greeting = "\(optionalString), Swifter!"
}

// Unwrapping, fast
if let optionalStringUnwrapped = optionalString {
    var greeting = "\(optionalString), Swifter!"
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
