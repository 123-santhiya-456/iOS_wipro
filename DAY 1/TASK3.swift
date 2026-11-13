var price = 250  
var quantity: Int = 3 
let taxRate = 0.18 
price = 300 

let subtotal = Double(price * quantity)
let tax = subtotal * taxRate
let total = subtotal + tax
 
var title = "Order" 
title = "New Order"
print(total)  