import UIKit

var evenNumbers:[Int] = [2, 4, 6, 8]
//let evenNumbers2:Array<Int> = [2, 4, 6, 8]


evenNumbers.append(10)
evenNumbers += [12, 14, 16]
evenNumbers.append(contentsOf: [18,20])

let isEmpty = evenNumbers.isEmpty

evenNumbers.count

print(evenNumbers.first)

//evenNumbers=[]
//let firstItem = evenNumbers.last

if let firstElement = evenNumbers.first{
    print("--> first item is :\(firstElement)")
}


evenNumbers.min()
evenNumbers.max()

var firstItem = evenNumbers[0]
var secondItem = evenNumbers[1]

//var twentithItem = evenNumbers[19]    // error


// ------------>

let firstThree = evenNumbers[0...2]
evenNumbers

evenNumbers.contains(3)
evenNumbers.contains(4)

evenNumbers.insert(0, at: 0)
evenNumbers

evenNumbers.remove(at: 0)
evenNumbers

evenNumbers[0...2] = [-2,0,2]
evenNumbers

//evenNumbers.swapAt(0, 9)

for num in evenNumbers{
    print(num)
}
print()

for(index,num)in evenNumbers.enumerated(){
    print("index: \(index), value: \(num)")
}

evenNumbers.dropFirst(3)
evenNumbers

let firstThreeRemoved = evenNumbers.dropFirst(3)
firstThreeRemoved

let lastRemoved = evenNumbers.dropLast()
lastRemoved

let firstThree_2 = evenNumbers.prefix(3)
firstThree_2

let lastThree = evenNumbers.suffix(3)
lastThree

evenNumbers

evenNumbers.popLast()
evenNumbers
