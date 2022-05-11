import UIKit

//func functionName(exrenalName param: ParamType)-> ReturnType{
//    //...............
//    // return returnValue
//}

func printTotalPrice(price: Int, count: Int){
    print("Total Price : \(price * count)")
}

func printTotalPrice_2(price: Double, count: Double){
    print("Total Price : \(price * count)")
}

func printTotalPrice_2(가격: Double, 갯수: Double){
    print("Total Price : \(가격 * 갯수)")
}

// In-out paramter

//func incermentAndPrint(_ value: Int){   // paramter : constant(let)
//    value += 1        // error
//    print(value)
//}

var value = 3
func incermentAndPrint(_ value: inout Int){
    value += 1
    print(value)
}

incermentAndPrint(&value)


// --- Function as a param

func add(_ a:Int, _ b:Int)-> Int{
    return a+b
}

func subtract(_ a:Int, _ b:Int)-> Int{
    return a-b
}

var function = add
function(4,2)

function = subtract
function(4,2)

func printResult(_ function:(Int,Int)->Int,_ a:Int, _ b:Int){
    let result = function(a,b)
    print(result)
}

printResult(add, 10, 5)
printResult(subtract, 10, 5)
