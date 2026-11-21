enum shape {
    case circle(radius: Double)
    case rectangle(width: Double ,height: Double)
    case triangle(base: Double, height: Double)

var area: Double {
    switch self {
        case let .circle(radius):
          return Double.pi * radius * radius
        case let .rectangle(width , height):
          return width * height
        case let .triangle(base , height):
          return 0.5 * base * height
    }
 }
}
let c = shape.circle(radius: 5.0)
let r = shape.rectangle(width: 4.0 , height: 6.0)
let t = shape.triangle(base: 7.0 , height: 8.0)
print("Circle Area: \(c.area)")
print("Rectangle Area: \(r.area)")
print("Triangle Area: \(t.area)")

struct rectangle {
    var width: Double
    var height: Double
    var perimeter: Double{
        return 2 * (width + height)
    }
mutating func scale(by factor: Double){
    width *= factor
    height *= factor
} 
}
let originalRect = rectangle(width: 10.0, height: 5.0)
var scaledCopy = originalRect 

scaledCopy.scale(by: 2.0)

print("Original Rectangle: \(originalRect.width) x \(originalRect.height) | Perimeter: \(originalRect.perimeter)")
print("Scaled Copy:        \(scaledCopy.width) x \(scaledCopy.height) | Perimeter: \(scaledCopy.perimeter)")












