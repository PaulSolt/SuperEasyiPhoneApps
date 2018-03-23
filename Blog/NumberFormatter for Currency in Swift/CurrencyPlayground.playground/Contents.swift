/*:

## NumberFormatter and currency formatting for Swift 4+

Paul Solt
 <Paul@SuperEasyApps.com>

 <http://supereasyapps.com/blog/2016/2/8/how-to-use-nsnumberformatter-in-swift-to-make-currency-numbers-easy-to-read>
 
**Number: 9999.99**

* USA: $9,999.99
* Germany: 9.999,99 €
* France: 9 999,99 €

*/

import UIKit

let currencyFormatter = NumberFormatter()
currencyFormatter.usesGroupingSeparator = true
currencyFormatter.numberStyle = .currency
// localize to your grouping and decimal separator
currencyFormatter.locale = Locale.current

if let priceString = currencyFormatter.string(from: 9999.99) {
    print(priceString) // Displays $9,999.99 in the US locale
}

// You can force a locale instead of using the users current local
//currencyFormatter.locale = Locale(identifier: "en_US")

currencyFormatter.locale = Locale(identifier: "fr_FR")
if let priceString = currencyFormatter.string(from: 9999.99) {
    print(priceString) // Displays 9 999,99 € in the French locale
}

currencyFormatter.locale = Locale(identifier: "de_DE")
if let priceString = currencyFormatter.string(from: 9999.99) {
    print(priceString) // Displays 9.999,99 € in the German locale
}

// Homework

// Non-currency decimal number formatting
currencyFormatter.numberStyle = .decimal
currencyFormatter.groupingSeparator = "_"
currencyFormatter.decimalSeparator = "+"

if let priceString = currencyFormatter.string(from: 9999.99) {
    print(priceString) // Displays 9G999D99
}

// Currency formatting
currencyFormatter.numberStyle = .currency
currencyFormatter.currencySymbol = "@"
currencyFormatter.currencyGroupingSeparator = "!"
currencyFormatter.currencyDecimalSeparator = "+"

if let priceString = currencyFormatter.string(from: 9999.99) {
    print(priceString) // Displays 9!999+99 @
}
