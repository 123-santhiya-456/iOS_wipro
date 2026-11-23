let arry = ["10", "x", "25", "", "7.5", "40"]
print(arry)

let newArray = arry.compactMap { Int($0) }
print(newArray)

let sum = newArray.reduce(0 , +)
print("The Sum of Arry: \(sum)")

let inValid = arry.count - newArray.count
print("The inValid entries: \(inValid)")

let firstDoubled = newArray.first.map { $0 * 2 }
print("First doubled:", firstDoubled ?? 0) 
