import Foundation
//1
let year = [1900 , 2000 , 2024 , 2026]
for i in year{
  let leap = (i % 400 == 0 ) || ( i % 4 == 0 && i % 100 != 0)
  print("\(i) is leap yaer: \(leap)")
}

//2
var num = 99
var isInRange=(1...100).contains(num)
print("Number bet 1 10 100: \(isInRange)")

//3
var n = 30
let ans = (n % 2 == 0 && n % 10 != 0 )
print("The result: \(ans)")

//4
var nickname: String? = "Santhiya"
print(nickname ?? "Guest")
var nick: String? = nil
print(nick ?? "Guest")



