//: Playground - noun: a place where people can play

import UIKit

let currencyFormatter = NumberFormatter()
currencyFormatter.usesGroupingSeparator = true
currencyFormatter.numberStyle = .currency
// localize to your grouping and decimal separator
currencyFormatter.locale = Locale.current

// We'll force unwrap with the !, if you've got defined data you may need more error checking
let priceString = currencyFormatter.string(from: 9999.99)!
print(priceString) // Displays $9,999.99 in the US locale

