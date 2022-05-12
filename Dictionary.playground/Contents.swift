import UIKit


//var scoreDic: [String:Int] = ["Jason" : 80, "Jay": 95, "Jake": 90]
var scoreDic: Dictionary<String, Int> = ["Jason" : 80, "Jay": 95, "Jake": 90]


if let score = scoreDic["Jason"]{
    score
}else{
    // score 없음
}
scoreDic["Jay"]
scoreDic["Mark"]


scoreDic.isEmpty
//scoreDic = [:]
//scoreDic.isEmpty
scoreDic.count


// 기존 사용자 업데이트
scoreDic["Jason"] = 99
scoreDic

//기존 사용자 추가
scoreDic["Jack"] = 100
scoreDic

scoreDic["Jack"] = nil
scoreDic


// Foor Loop
for (name,score) in scoreDic{
    print("\(name), \(score)")
}

for key in scoreDic.keys{
    print(key)
}

for score in scoreDic.values{
    print(score)
}

for data in scoreDic{
    print(data)
}


// 1. 이름, 직업, 도시 딕셔너리
var myDic:[String:String] = ["name":"Geonho", "job":"Student","city":"Deagu"]

// 2. 도시 부산으로 업데이트
myDic["city"] = "Busan"

// 3. 딕셔너리를 받아서 이름과 도시 출력하는 함수
func printNameAndCity(dic:[String:String]){
    if let name = dic["name"], let city = dic["city"] {
        print("\(name),\(city)")
    }else{
        print("--> can not found")
    }
}

printNameAndCity(dic: myDic)
