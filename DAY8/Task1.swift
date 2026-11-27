import Foundation

struct Student {
    let name: String
    let marks: Int
    let dept: String

    var isPassed: Bool {
        marks >= 40
    }
}

let students = [
    Student(name: "Asha", marks: 82, dept: "IT"),
    Student(name: "Ravi", marks: 35, dept: "CSE"),
    Student(name: "Meena", marks: 91, dept: "IT"),
    Student(name: "Kiran", marks: 56, dept: "ECE"),
    Student(name: "Divya", marks: 67, dept: "CSE"),
    Student(name: "Arjun", marks: 40, dept: "IT")
]


// Filter 
let passedShort = students.filter {
    $0.marks >= 40
}

// Use the shorthand result for remaining tasks
let passedStudents = passedShort

// Map - Names
let names = passedStudents.map { $0.name }

// Map marks first
let marksArray = passedStudents.map { $0.marks }

// Reduce - Total marks
let totalMarks = marksArray.reduce(0) { total, mark in
    total + mark
}

// Average
let average = Double(totalMarks) / Double(marksArray.count)

// Sort - Highest to lowest
let rankedStudents = students.sorted {
    $0.marks > $1.marks
}

// Group by department
let studentsByDepartment = Dictionary(grouping: students, by: \.dept)

// Print passed students
print("Passed Students:")
for student in passedStudents {
    print(student.name, student.marks)
}

// Print names
print("\nPassed Names:")
print(names)

// Average
print("\nTotal Marks:", totalMarks)
print("Average:", average)

// Rankings
print("\nRankings:")
for (index, student) in rankedStudents.enumerated() {
    print("\(index + 1). \(student.name) - \(student.marks)")
}

// Department-wise groups
print("\nDepartment Groups:")
for (department, students) in studentsByDepartment {
    print(department, ":", students.map { $0.name })
}