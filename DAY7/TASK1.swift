import Foundation
//1
func average(of marks: Int...) -> Double{

    if marks.isEmpty{
        return 0
    }

    let total = marks.reduce(0 , +)
    let count = marks.count
    let avg = Double(total) / Double(count)
    return avg
}
//2
func grade(for average: Double) -> String{
   if average >= 90{
     return "O"
   }
   else if average >= 80{
     return "A+"
   }
   else if average >= 70{
     return "A"
   }
   else if average >= 60{
    return "B"
   }
   else{
    return "RA"
   }
}


func stats(of marks: [Int]) -> (min: Int, max: Int, average: Double)?{
   
   if marks.isEmpty{
    return nil
   }
   var min = marks.min()!
   var max = marks.max()!

   var total = marks.reduce(0 , +)
   var count = marks.count
   var avg = Double(total) / Double(count)
   return (min , max , avg)
}


func curve(_ marks: inout [Int], by bonus: Int = 5){
   for i in marks.indices {
        marks[i] = min(marks[i] + bonus, 100)
    }
}

let avg = average(of: 80, 90, 75, 85)
print("Average: \(avg)")
print("Grade: \(grade(for: avg))")

if let s = stats(of: [70, 80, 90, 100]) {
    print("Min: \(s.min), Max: \(s.max), Avg: \(s.average)")
}

var marks = [65, 75, 90, 98]
curve(&marks)
print("Curved Marks: \(marks)")
