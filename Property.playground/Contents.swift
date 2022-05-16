import UIKit

struct Person{
    var firstName: String{   // stored property(저장 프로퍼티)
//        willSet{
//            print("willSet: \(firstName) --> \(newValue)")
//        }
        didSet{
            print("didSet: \(oldValue) --> \(firstName)")
        }
    }
    var lastName: String
    
    lazy var isPropular: Bool = {   // lazy property
        if fullName == "Jay Park"{
            return true
        }
        else{
            return false
        }
    }()
    
//    var fullName:String{    // computed property(연산 프로퍼티)
//        get{
//            return "\(firstName) \(lastName)"
//        }
//        set{
//            // newValue "Jay Park"
//            if let firstName = newValue.components(separatedBy: " ").first{
//                self.firstName = firstName
//            }
//            if let lastName = newValue.components(separatedBy: " ").last{
//                self.lastName = lastName
//            }
//        }
//    }
    
    var fullName:String{    // computed property(연산 프로퍼티) -> 호출시 값을 하나 반환한다
        return "\(firstName) \(lastName)"
    }
    
//    func fullName()-> String{ // method -> 호출시 어떤 작업을 한다
//        return "\(firstName) \(lastName)"
//    }
    
    static let isAlien: Bool = false    //type property(타입 프로퍼티)
}

var person = Person(firstName: "Jason", lastName: "Lee")

//person.firstName
//person.lastName
//
//person.firstName = "Jim"
//person.lastName = "Kim"
//
//person.firstName
//person.lastName
//
//person.fullName
//person.fullName = "Jay Park"
//
//person.fullName
//
//Person.isAlien
//
//person.isPropular

person.fullName
//person.fullName()
