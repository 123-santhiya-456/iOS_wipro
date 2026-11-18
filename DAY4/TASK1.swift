
// 1. Enum
enum BookStatus {
    case available
    case borrowed(by: String, dueIns: Int)
    case reserved(for: String)

    var label: String {
        switch self {
        case .available:
            return "Available"
        case .borrowed(let name, let days):
            return "Borrowed by \(name), Due in \(days) days"
        case .reserved(let name):
            return "Reserved for \(name)"
        }
    }
}

// 3. Struct
struct Book {
    var title: String
    var status: BookStatus = .available
}

// 4. Class
class Member {
    var name: String
    var borrowedBooks: [String] = []

    init(name: String) {
        self.name = name
    }
}

// 5. Copy Book
var book1 = Book(title: "Swift")
var book2 = book1

book2.status = .borrowed(by: "Santhiya", dueIns: 5)

print(book1.status.label)
print(book2.status.label)

// 6. Copy Member
let member1 = Member(name: "Santhiya")
let member2 = member1

member2.name = "Priya"

print(member1.name)
print(member2.name)
