import UIKit

//{(param) -> return type in
//    statement
//    ...
//}

// Example 1 : Simple Closure

//let simpleClosure = {
//
//}
//
//simpleClosure()

// Example 2 : 코드블록을 구현한 Closure

//let simpleClosure = {
//    print("Hello")
//}
//
//simpleClosure()


// Example 3 : 인풋 파라미터를 받는 Closure

//let simpleClosure:(String) -> Void = { name in
//    print("Hello. 나의 이름은 \(name)입니다.")
//}
//
//simpleClosure("Geonho")


// Example 4 : 값을 리턴하는 Closure

//let simpleClosure:(String) -> String = { name in
//    let message = "Hello \(name)"
//    return message
//}
//
//let result = simpleClosure("Geonho")
//print(result)

// Example 5 : Closure를 파라미터로 받는 함수 구현

//func simpleFunction(simpleClosure:() -> Void){
//    print("함수에서 호출된 closure")
//}
//
//simpleFunction(simpleClosure: {
//    print("Hello from Closure")
//})

//func simpleFunction(simpleClosure:() -> Void){
//    print("함수에서 호출된 closure")
//    simpleClosure()
//}
//
//simpleFunction(simpleClosure: {
//    print("Hello from Closure")
//})


// Example 6 : Trailing Closure

func simpleFunction(message:String, simpleClosure:() -> Void){
    print("함수에서 호출된 closure, 메세지는 \(message)")
    simpleClosure()
}


simpleFunction(message: "asdasd", simpleClosure: {
    print("Hello from Closure")
})

// --->

simpleFunction(message: "asdasd"){
    print("Hello from Closure")
}
