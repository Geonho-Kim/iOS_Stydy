import UIKit

struct PersonStruct{
    var firstName: String
    var lastName: String

    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String{
        return "\(firstName) \(lastName)"
    }
    
    mutating func uppercaseName(){
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}


class PersonClass {
    var firstName: String
    var lastName: String

    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String{
        return "\(firstName) \(lastName)"
    }
    
    func uppercaseName(){
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}


var personStruct1 = PersonStruct(firstName: "Jason", lastName: "Lee")
var personStruct2 = personStruct1

var personClass1 = PersonClass(firstName: "Jason", lastName: "Lee")
var personClass2 = personClass1

personStruct2.firstName = "Jay"
personStruct1.fullName
personStruct2.fullName

personClass2.firstName = "Jay"
personClass1.fullName
personClass2.fullName


personClass2 = PersonClass(firstName: "Bob", lastName: "Lee")
personClass1.fullName
personClass2.fullName

personClass1 = personClass2
personClass1.fullName
personClass2.fullName

