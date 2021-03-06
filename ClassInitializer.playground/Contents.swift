import UIKit


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

class Student: Person {
    var grades: [Grade] = []
    
    override init(firstName:String, lastName: String){
        super.init(firstName: firstName, lastName: lastName)
    }
    
    convenience init(student: Student){
        self.init(firstName: student.firstName, lastName: student.lastName)
    }
}

// 학생인데 운동선수
class StudentAthlete: Student {
    var minimumTrainingTime: Int = 2
    var trainedTime: Int = 0
    var sports: [String]    // error(Class 'StudentAthlete' has no initializers)
    
    init(firstName: String, lastName: String, sports:[String]){
        // Phase 1
        self.sports = sports
        // self.train()     // error('self' used in method call 'train' before 'super.init' call)init 이전에 호출시 에러 발생
        super.init(firstName: firstName, lastName: lastName)    // lastName, firstName은 student classd에서 정의
        
        // Phase 2
        self.train()
    }
    
    convenience init(name: String){
        self.init(firstName: name, lastName:"", sports:[])
    }
    
    
    
    func train() {
        trainedTime += 1
    }
}

// 운동선수인데 축구선수
class FootballPlayer: StudentAthlete {
    var footballTeam = "FC Swift"

    override func train() {
        trainedTime += 2
    }
}

let student1 = Student(firstName: "Jason", lastName: "Lee")
let student1_1 = Student(student: student1)     // convenience init(line 31)
let student2 = StudentAthlete(firstName: "Jay", lastName: "Lee", sports: ["Football"])
let student3 = StudentAthlete(name: "Mike")



