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
    print("O")
   }
   else if average >= 80{
    print("A+")
   }
   else if average >= 70{
     print("A")
   }
   else if average >= 60{
    print("B")
   }
   else{
    print("RA")
   }
}


func stats(of marks: [Int]) -> (min: Int, max: Int, average: Double)?{
   
   if of marks.isEmpty{
    return nil
   }
   var min = marks.min()
   var max = marks.max()
   var avg = Double(total) / Double(count)
   return (min , max , avg)
}


func curve(_ marks: inout [Int], by bonus: Int = 5){

}
