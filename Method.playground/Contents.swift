import UIKit

struct Lecture{
    var title: String
    var maxStudents: Int = 10
    var numOfRegistered: Int = 0
    
    func remainSeats()-> Int{
        let remainSeats = maxStudents - numOfRegistered
        return remainSeats
    }
    
    mutating func register(){   // struct의 프로퍼티를 변경시킴 -> mutating
        // 등록된 학생수 증가시키기
        numOfRegistered += 1
    }
    
    static let target: String = "AnyBody want to learn something"   // type property
    
    static func nameOfAcademy()-> String{   // type method
        return "FastCampus"
    }
    
}

var lec = Lecture(title: "iOS Basic")



// remainSeats(of: lec)
lec.remainSeats()

lec.register()
lec.register()
lec.register()
lec.register()


lec.remainSeats()


Lecture.target
Lecture.nameOfAcademy()



// --> 메소드 확장

struct Math{
    static func abs(value: Int)-> Int{
        if value > 0{
            return value
        }else{
            return -value
        }
    }
}

Math.abs(value: -20)

// 제곱, 반값
extension Math{
    static func sqaure(value: Int)-> Int{
        return value * value
    }
    static func half(value: Int)-> Int{
        return value/2
    }
}

var value: Int = 3
// 제곱, 반값

extension Int{
    func square() -> Int{
        return self * self
    }
    
    func half() -> Int{
        return self/2
    }
}

value.square()
value.half()

