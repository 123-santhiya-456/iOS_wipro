//01 ARRAY
var subjects = ["Swift", "UIKit", "SwiftUI"]
subjects.append("Networking")
subjects.insert("Testing", at: 1)
subjects.remove(at: 2)
print(subjects.sorted())

//02 SET
var registered: Set = ["santhiya" , "santhiya" , "karthika"]
print(registered.count)

//03 DIC
var marks: [String: Int] = [
  "Santhiya": 30,
  "Karthika": 40,
  "Poorva": 50
]
marks["Nandhini"] = 60
print(marks["Nandhini"] ?? 0)
print(marks["Padma"] ?? 0) // padma not in dic so it prints 0

for m in marks.keys.sorted(){
  print("\(m) : \(marks[m]!)")
}

let high = marks.values.max()
print("Highest Mark: \(high ?? 0)") 
