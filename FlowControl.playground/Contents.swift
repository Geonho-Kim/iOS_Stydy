import UIKit
import Foundation

// --- While
print("--- While Loop")
//while 조건{
//    code ..
//}

//var i = 0
//while i < 10{
//    print(i)
//    i += 1
//}

print("--- While")
var i = 10
while i < 10{
    print(i)
    if i == 5{
        break
    }
    i += 1
}

print("--- Repeat")
i = 10
repeat{
    print(i)
    i += 1
}while i < 10

//while
//조건 > 코드수행 > 조건 > 코드수행
//
//repeat
//코드수행 > 조건 > 코드수행 > 조건


// --- For Loop

print("\n\n--- For Loop")

let closedRange = 0...10    //1~10
let halfClosedRange = 0..<10    //1~9

var sum = 0
for i in halfClosedRange{
    print("---> \(i)")
    sum += i
}

print("---> total sum : \(sum)")

var sinValue: CGFloat = 0
for i in closedRange{
    sinValue = sin(CGFloat.pi/4*CGFloat(i))
}

let name = "Jason"
for _ in closedRange{
    print("---> name : \(name)")
}


for i in closedRange{
    if i % 2 == 0{
        print("---> 짝수 : \(i)")
    }
}
// =
for i in closedRange where i % 2 == 0{
    print("---> 짝수 : \(i)")
}

for i in closedRange{
    if i == 3{
        continue
    }
    print("---> \(i)")
}


for i in closedRange where i != 0{
    for j in closedRange where j != 0{
        print("\(i) * \(j) = \(i*j)")
    }
}


// --- Swich
print("\n\n---> Swich")

//let num = 10
//
//switch num{
//case 0:
//    print("--> 0")
//case 0...10:
//    print("--> 0~10 사이입니다.")
//case 10:
//    print("--> 10")
//default:
//    print("--> default")
//}
//
//let pet = "bird"
//
//switch pet{
//case "dog","cat","bird":
//    print("--> 집동물이네요?")
//default:
//    print("--> 잘 모르겠습니다.")
//}

let num = 5
switch num{
case _ where num % 2 == 0:
    print("--> 짝수")
default:
    print("--> 홀수")
}


let coordinate = (x: 10, y: 10)

switch coordinate{
case(0, 0):
    print("--> 원점")
case(let x,0):
    print("--> x축, x: \(x)")
case(0,let y):
    print("--> y축 y : \(y)")
case(let x, let y)where x == y:
    print("--> x와 y가 같음 x, y = \(x), \(y)")
case(let x, let y):
    print("--> 좌표 어딘가 x, y = \(x), \(y)")

}
