
import Foundation
var celsius: Double = 25.0
let fahrenheitFactor: Double = 9.0 / 5.0
let kelvinOffset: Double = 273.15

var fahrenheit = celsius * fahrenheitFactor + 32
var kelvin = celsius + kelvinOffset

print("Celsius: \(celsius)°C")
print("Fahrenheit: \(String(format: "%.1f", fahrenheit))°F")
print("Kelvin: \(String(format: "%.1f", kelvin))K")

celsius = 35.0

fahrenheit = celsius * fahrenheitFactor + 32
kelvin = celsius + kelvinOffset

print("\nAfter changing temperature:")

print("Celsius: \(celsius)°C")
print("Fahrenheit: \(String(format: "%.1f", fahrenheit))°F")
print("Kelvin: \(String(format: "%.1f", kelvin))K")
