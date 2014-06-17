/************************
 * Optional
 ***********************/

// Optional
var optionalString: String? = "Hello"
optionalString == nil

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
