let studentName: String = "Santhiya NS"
let rollNumber: Int = 717823247
var semester: Int = 8
var cgpa: Double = 8.9
let isHosteller: Bool = true

print("Name: \(studentName), Roll: \(rollNumber), Semester: \(semester)")

semester += 1
cgpa += 1
print("Name: \(studentName), Roll: \(rollNumber), UpdatedSemester: \(semester), cgpa \(cgpa)")

studentName = "Daisy" // error: cannot assign to value: 'studentName' is a 'let' constant

print(type(of: studentName))
print(type(of: rollNumber))
print(type(of: semester))
print(type(of: cgpa))
print(type(of: isHosteller)) 


https://github.com/123-santhiya-456/iOS_wipro.git
