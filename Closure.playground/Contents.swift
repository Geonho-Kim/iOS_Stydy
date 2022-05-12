import UIKit


//var multiplyClosure:(Int, Int) -> Int = {(a:Int, b:Int)-> Int in return a * b
//
//}

var multiplyClosure:(Int, Int) -> Int = { $0 * $1}

//var multiplyClosure:(Int, Int) -> Int = {a,b in
//return a * b}

let result = multiplyClosure(4,2)


func operateTowNum(a:Int, b:Int, operation:(Int,Int) -> Int) -> Int{
    let result = operation(a,b)
    return result
}

operateTowNum(a: 4, b: 2, operation: multiplyClosure)

var addClosure: (Int,Int)->Int = {a, b in
    return a+b
}

operateTowNum(a: 4, b: 2, operation: addClosure)


operateTowNum(a: 4, b: 2) { a, b in
    return a / b
}


let voidClosure: () -> Void = {
    print("Void Closure")
}

voidClosure()

// Capturing Value

var count = 0

let incrementer = {
    count += 1
}

incrementer()
incrementer()
incrementer()

count
