/************************************
    Generic
************************************/


// Functions
//
func swapTwoValues<T>(inout a: T, inout b: T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var a = 1
var b = 7
swapTwoValues(&a, &b)
a
b

var someString = "hello"
var anotherString = "world"
swapTwoValues(&someString, &anotherString)
someString
anotherString


// Type Constraint
//
func findIndex<T: Equatable>(array: T[], valueToFind: T) -> Int? {
    for (index, value) in enumerate(array) {
        if value == valueToFind {
            return index
        }
    }
    return nil
}


// Where Clauses
//
func commonElements <T: Sequence, U: Sequence
    where T.GeneratorType.Element == U.GeneratorType.Element,
          T.GeneratorType.Element: Equatable
    > (lhs: T, rhs: U) -> T.GeneratorType.Element[]
{
    var result: T.GeneratorType.Element[] = []
    
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                result.append(rhsItem)
            }
        }
    }
    
    return result
}

commonElements([1,2,3,4,5,6,7,8,9], [2,4,8,16,32])






