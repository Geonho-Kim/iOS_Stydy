import UIKit

// 도전과제
// 1. 강의 이름, 강사 이름, 학생수를 가지는 Struct 만들기 (Lecture)

struct Lecture{
    let name: String
    let teacherName: String
    let numOfStudent: Int
}

// 2. 강의 어레이와 강사 이름을 받아서, 해당 강사의 강의 이름을 출력하는 함수 만들기

func printLectureName(from teacherName:String, lectures:[Lecture]){
//    var lectureName = ""
//
//    for lecture in lectures{
//        if teacherName == lecture.teacherName{
//            lectureName = lecture.name
//        }
//    }

    let lectureName = lectures.first { $0.teacherName == teacherName}?.name ?? ""
    print("그 강사님 강의는: \(lectureName)")
}

// 3. 강의 3개 만들고 강사 아름으로 강의 찾기

let lecture1 = Lecture(name: "iOS Basic", teacherName: "Jason", numOfStudent: 5)
let lecture2 = Lecture(name: "iOS Advanced", teacherName: "Jack", numOfStudent: 5)
let lecture3 = Lecture(name: "iOS Pro", teacherName: "Jim", numOfStudent: 5)

let lectures = [lecture1,lecture2,lecture3]

printLectureName(from: "Jason", lectures: lectures)
