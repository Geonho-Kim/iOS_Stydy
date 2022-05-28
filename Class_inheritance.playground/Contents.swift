import UIKit

// 처음 주어진 코드
//struct Grade {
//    var letter: Character
//    var points: Double
//    var credits: Double
//}
//
//class Person {
//    var firstName: String
//    var lastName: String
//
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//
//    func printMyName() {
//        print("My name is \(firstName) \(lastName)")
//    }
//}
//
//class Student {
//    var grades: [Grade] = []
//
//    var firstName: String
//    var lastName: String
//
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//
//    func printMyName() {
//        print("My name is \(firstName) \(lastName)")
//    }
//}


struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String

    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }

    func printMyName() {
        print("My name is \(firstName) \(lastName)")
    }
}

class Student: Person {     // Person class를 상속
    var grades: [Grade] = []

//    var firstName: String
//    var lastName: String
//
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//
//    func printMyName() {
//        print("My name is \(firstName) \(lastName)")
//    }
}


let jay = Person(firstName: "Jay", lastName: "Lee")
let jason = Student(firstName: "Jason", lastName: "Lee")

jay.firstName
jason.firstName

jay.printMyName()
jason.printMyName()

let math = Grade(letter: "B", points: 8.5, credits: 3)
let history = Grade(letter: "A", points: 10.0, credits: 3)
jason.grades.append(math)
jason.grades.append(history)


jason.grades.count


// 학생인데 운동선수
class StudentAthelete: Student{
    var minimunTrainingTime: Int = 2
    var trainedTime: Int = 0
    
    func train(){
        trainedTime += 1
    }
    
}

// 운동선수인데 축구선수
class FootBallPlayer:StudentAthelete{
    var footballTeam = "FC Swift"
    
    override func train() {
        trainedTime += 2
    }
}

// Person > Student > Athelete > Football Player

var athelete1 = StudentAthelete(firstName: "Yuna", lastName: "Kim")
var athelete2 = FootBallPlayer(firstName: "Heungmin", lastName: "Son")

athelete1.firstName
athelete2.firstName

athelete1.grades.append(math)
athelete2.grades.append(math)

athelete1.minimunTrainingTime
athelete2.minimunTrainingTime

//athelete1.footballTeam
athelete2.footballTeam

athelete1.train()
athelete1.trainedTime

athelete2.train()
athelete2.trainedTime


athelete1 = athelete2 as StudentAthelete
athelete1.train()
athelete1.trainedTime
athelete1.printMyName()

//athelete1.footballTeam    //error
if let son = athelete1 as? FootBallPlayer{
    print("--> team:\(son.footballTeam)")
}