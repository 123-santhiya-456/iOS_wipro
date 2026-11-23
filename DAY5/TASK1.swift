struct Address {
    var city: String?
}

struct User {
    var name: String
    var age: Int?
    var address: Address?
}

func describe(_ user: User) -> String {
    guard let age = user.age else {
        return "Age is not mentioned for \(user.name)"
    }
    
    // Optional chaining (?.) + nil-coalescing (??)
    let city = user.address?.city ?? "unknown city"
    return "Name: \(user.name), Age: \(age), City: \(city)"
}

// 1. Complete data
let user1 = User(name: "Sandy", age: 21, address: Address(city: "Chennai"))
print(describe(user1))

// 2. No age
let user2 = User(name: "Daisy", age: nil, address: Address(city: "Mumbai"))
print(describe(user2))

// 3. Address with no city
let user3 = User(name: "Alex", age: 25, address: Address(city: nil))
print(describe(user3))

// 4. Printing Int conversions to see Optionals
print(Int("42"))  // Prints: Optional(42)
print(Int("abc")) // Prints: nil
