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

// 5) operator functions
sort(names, >)



/************************
Closure (unamed)
************************/

let city = ["Paris", "London", "Milan", "Madrid", "Berlin"]
var suffix = ".jpg"

city.map {
    (s: String) -> String in
    suffix = ".gif"
    return s + suffix
}

suffix          // capture are always read-write
