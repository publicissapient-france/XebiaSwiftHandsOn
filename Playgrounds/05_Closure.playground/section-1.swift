/*

Global functions are closures that have a name and do not capture any values.

Nested functions are closures that have a name and can capture values from their enclosing function.

Closure expressions are unnamed closures written in a lightweight syntax that can capture values from their surrounding context.

*/


/************************
 Global Function
************************/

// Func Type
//
func timesTwo(a: Int) -> Int {
    return 2*a
}

let mathFunction = timesTwo
mathFunction(3)


// Closure Type
//
let sum = {(a: Int, b: Int) -> Int in return a+b}
sum(3,4)


// Use Interchangeably
//  we will work on sort:
//  sort(array: String[], pred: (String, String) -> Bool)
//

func funcReverse(s1: String, s2: String) -> Bool {
    return s1 > s2
}

let closReverse = {
    (s1: String, s2: String) -> Bool in
    return s1 > s2
}


let names = ["Alex", "Wien", "Ewa", "Barry", "Julie"]

sort(names, funcReverse)
sort(names, closReverse)


// Simplification
//

// 1) closure inline
sort(names, {(s1: String, s2: String) -> Bool in return s1 > s2})

// 2) type inference
sort(names, {s1, s2 -> Bool in return s1 > s2})

// 3) implicit return from single-expression closure
sort(names, {s1, s2 in s1 > s2})

// 4) shorhand argument names
sort(names, {$0 > $1})

sort(names) {   // trailing closure syntax (API must be designed with this in mind!)
    $0 > $1     // useful for long closure, not much here
}

// 5) operator functions
sort(names, >)



/************************
Nested Functions
************************/
func chooseStepFunction(increment: Int, backwards: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int {
        return input + increment    // capture 'increment'
    }
    
    func stepBackward(input: Int) -> Int {
        return input - increment
    }
    
    return backwards ? stepBackward : stepForward
}


// Currying
//
func sum(a: Int, b: Int) -> Int {
    return a+b
}

func curry(f: (Int, Int) -> Int, with param: Int) -> (Int) -> Int {
    func g(b: Int) -> Int {
        return f(param, b)
    }
    return g;
}

let partialSumWithFive = curry(sum, with:5)
partialSumWithFive(10)



/************************
Closure (unamed)
************************/

var suffix = ".jpg"

names.map {
    (s: String) -> String in
    suffix = ".gif"
    return s + suffix
}

suffix          // capture are always read-write


// Strong, Weak, Unowned capture
//

// Refresher:
// Use strong references from owners to the objects they own
//
// Use weak references among objects with independent lifetimes
//      allowed to be nil anytime, imply we use 'var' and it's an optional(?)
//
// Use unowned references from owned objects with the same lifetime
//      cannot be nil, hence we can use 'let', and it's not an optional.
//


class strongCycleClass {
    let text = "Ne sera jamais libéré"
    
    @lazy var closure: () -> String = {     // @lazy to have acces to self, var because of lazy
        return self.text.uppercaseString    // self to acces property forced by the closure
    }
    
    func use() {
        println(closure())
    }
}

let badObj = strongCycleClass()
badObj.use()


class Correct {
    let text = "cette fois sans cycle"
    
    @lazy var closure: () -> String = {
        [unowned self] in                   // Capture list, Infered type used, no (...) before 'in'
        return self.text.uppercaseString
    }
    
    func use() {
        println(closure())
    }
}

let obj = Correct()
obj.use()


// Capture List
//

class Cache { }
let db = Cache()

class C {
    @lazy var closure: () -> () = {
        [unowned self, weak db] in      // we can put many capture modifier
        // ... do stuff with self and db
        return
    }
}

