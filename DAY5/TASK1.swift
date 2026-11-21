struct Address {
    var city: String?
}
struct User {
    var name: String
    var age: Int?
    var add: Address?
}

func describe(_ user: User) -> String{
        guard let value = user.age else{
            return "Age is not Mentioned for \(user.name)"
    }
    return "Name: \(user.name) ,Age: \(user.age) "
    
}

let user1 = User(name : "Sandy" , age: 21 ,add: nil)
print(describe(user1))



