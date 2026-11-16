var itemPrice = 450.0
var quantity = 3
var subtotal = itemPrice * Double(quantity)
print("Subtotal: \(subtotal)")

var hasCoupon = true
let discount = (hasCoupon && subtotal > 1000) ? subtotal * 0.10 : 0.0

let disAmount = subtotal - discount
let gst = disAmount * 0.18
let total = disAmount + gst

let people = 4
let share = total / Double(people)

print("TotalShare: \(share)")

let amount = 1234
let hundreds = amount / 100
let remainder = amount % 100
print("Hundreds: \(hundreds)")
print("Remainders: \(remainder)")

