import UIKit

var carName: String?
carName = nil
carName = "Benz"



// 1. 최애 배우 이름을 담는 변수 (타입 String?)
// 2. let num = Int("10") -> 타입은?

var favoritMovieStar: String? = nil
let num = Int("10")
let num_2 = Int("10d")

// 고급기능 4가지

// Forced unwrapping
// Optional binding (if let)
// Optional binding (guard)
// Nil coalescing

// Forced unwrapping > 억지로 언박싱
// Optional binding (if let) > 부드럽게 언박싱 1
// Optional binding (guard) > 부드럽게 언박싱 2
// Nil coalescing > 언박싱 후 값이 없으면 디폴트 값을 주기

print(carName)
print(carName!)

//carName = nil
//print(carName!)

carName = nil
if let unwrappedCarName = carName{
    print(unwrappedCarName)
}else{
    print("Car Name 없음")
}

//func printParsedInt(from: String){
//    if let parsedInt = Int(from){
//        print(parsedInt)
//        // Cyclomatic Complexity(복잡도)
//    }else{
//        print("Int로 컨버팅 안됨")
//    }
//}
//printParsedInt(from: "100")
//printParsedInt(from: "-100")
//printParsedInt(from: "Hello")
//

func printParsedInt(from: String){      // Cyclomatic Complexity(복잡도) 낮음
    guard let parsedInt = Int(from) else{
        print("Int로 컨버팅 안됨")
        return
    }
    print(parsedInt)
}

printParsedInt(from: "hello")
printParsedInt(from: "100")

carName = "모델 X"
let myCarName: String = carName ?? "모델 S"

carName = nil
let myCarName_2: String = carName ?? "모델 S"


// --- 도전과제

// 1. 최애 음식 이름을 담는 변수를 작성(String?)

var foodName: String? = "pasta"


// 2. 옵셔널 바인딩을 이용해서 값을 확인해보기



// 3. 닉네임을 받아서 출력하는 함수 만들기, 조건 입력 파라미터는 String

