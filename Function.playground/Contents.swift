import UIKit


func printName(){
    print("---> My name is Jason")
}
printName()

// param
// 숫자를 받아서 10을 곱해서 출력
func printMultipleOfTen(value: Int){
    print("\(value) * 10 = \(value*10)")
}
printMultipleOfTen(value: 5)

// param 2개
// 물건 값과 갯수를 받아서 전체 금액을 출력하는 함수
//func printTotalPrice(price: Int, count: Int){
//    print("Total Price : \(price*count)")
//}
//
//printTotalPrice(price: 1500, count: 5)
//printTotalPrice(1500, 5)

func printTotalPrice(price: Int, count: Int){
    print("Total Price : \(price*count)")
}
printTotalPrice(price: 1500, count: 5)
printTotalPrice(price: 1500, count: 7)
printTotalPrice(price: 1500, count: 10)
printTotalPrice(price: 1500, count: 1)
print()

func printTotalPriceWithDefaultValue(price: Int=1500, count: Int){
    print("Total Price : \(price*count)")
}

printTotalPriceWithDefaultValue(count: 5)
printTotalPriceWithDefaultValue(count: 7)
printTotalPriceWithDefaultValue(count: 10)
printTotalPriceWithDefaultValue(count: 1)
printTotalPriceWithDefaultValue(price:2000, count: 1)

func totalPrice(price:Int,count:Int)->Int{
    let totalPrice = price * count
    return totalPrice
}

let calculatedPrice = totalPrice(price: 10000, count: 77)
calculatedPrice

// 1. 성, 이름을 받아서 fullname 출력하는 함수
func printFullName(firstName: String, lastName: String){
    print("FullName is \(firstName) \(lastName)")
}
printFullName(firstName: "Geonho", lastName: "Kim")

// 2. 1번에서 만든 함수인데, 파라미터 이름을 제거하고 fullname 출력하는 함수
func printFullNameWithoutParam(_ firstName: String, _ lastName: String){
    print("FullName is \(firstName) \(lastName)")
}
printFullNameWithoutParam("Geonho", "Kim")

// 3. 성, 이름을 받아서 fullname return하는 함수
func returnFullName(firstName: String, lastName: String)-> String{
    return "\(firstName) \(lastName)"
}
let name = returnFullName(firstName: "Geonho", lastName: "Kim")
name
