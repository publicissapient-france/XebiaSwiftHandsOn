/************************************
Tuple

temporary group of related values,
unrelated type, "mini-struct"

************************************/

// refresher
let c = 6

()          // empty tuple (void)
(c) == c    // one element tuple are juste simple value
(c,c)       // "normal" tuple

// accessing elements
var tup1 = (5,6)
tup1.0
tup1.1

// named elements
var tup2: (a: Int, b: Int) = (5,6)
tup2.a
tup2.b

// idem for function params
func ft(a: (Int, Int)) -> Int {
    return a.0 + a.1
}

func ft2(a: (b1: Int, b2: Int)) -> Int {
    return a.b1 + a.b2
}
