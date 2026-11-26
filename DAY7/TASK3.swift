func makeMultiplier(_ factor: Int) -> (Int) -> Int{
   return {i in i * factor}

}
func apply(_ values: [Int], using transform: (Int) -> Int) -> [Int]{
  return values.map { transform($0) }
}
let double = makeMultiplier(2)
let triple = makeMultiplier(3)
print(double(10))  
print(triple(10))  