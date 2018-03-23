# How to Use NSNumberFormatter (NumberFormatter) in Swift to Make Currency Numbers Easy to Read #

Typically, when you go to display a number in Swift (Float, Double, Int, etc.) it will display without grouping separators. By default a number like 4,592,028.0 will display like: `4592028.0`

If you need to display currency, you will want to show the currency symbol ($, €, ¥, £, etc.).

Displaying the correct currency symbol can get complex pretty quickly – thankfully, Apple has you covered and provides a solution with the `NSNumberFormatter`, now `NumberFormatter` class. 

## NSNumberFormatter Is Now NumberFormatter in Swift 4 + ##

In Swift 4+ many of these API's renamed, so I'll share both some of the Swift 2 code, as well as the updated Swift 4 code.

It can take care of displaying the correct symbol based on your user’s location in addition to any rules for decimal separators and grouping separators.

* In the USA: $3,490,000.89
* In France: 3 490 000,89 €
* In Germany: 3.490.000,89 €

You don't have to memorize these currency symbols, grouping separators, or decimal separators. Apple has done all the heavy lifting with `NumberFormatter`.

The following code sample will use the current locale of the user's device to format the currency:

## Swift 4+

	let currencyFormatter = NumberFormatter()
	currencyFormatter.usesGroupingSeparator = true
	currencyFormatter.numberStyle = .currency
	// localize to your grouping and decimal separator
	currencyFormatter.locale = Locale.current
	
	// We'll force unwrap with the !, if you've got defined data you may need more error checking
	let priceString = currencyFormatter.string(from: 9999.99)!
	print(priceString) // Displays $9,999.99 in the US locale

## Swift 2

	var currencyFormatter = NSNumberFormatter()
	currencyFormatter.usesGroupingSeparator = true
	currencyFormatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle 
	// localize to your grouping and decimal separator
	currencyFormatter.locale = NSLocale.currentLocale()
	var priceString = currencyFormatter.stringFromNumber(9999.99)
	print(priceString) // Displays $9,999.99 in the US locale


`NumberFormatter` can use the correct separators and currency symbols for your country by setting the `Locale` directly.

## Forcing Custom Locale's ##

You can override the users locale to display specific currency formats by changing the Locale using the identifier. 

	currencyFormatter.locale = Locale(identifier: "fr_FR")
	if let priceString = currencyFormatter.string(from: 9999.99) {
	    print(priceString) // Displays 9 999,99 € in the French locale
	}
	
	currencyFormatter.locale = Locale(identifier: "de_DE")
	if let priceString = currencyFormatter.string(from: 9999.99) {
	    print(priceString) // Displays 9.999,99 € in the German locale
	}

### More Locale Identifier Codes ###

* [Language and Local IDs](https://developer.apple.com/library/content/documentation/MacOSX/Conceptual/BPInternational/LanguageandLocaleIDs/LanguageandLocaleIDs.html)
* [iOS Locale Identifiers](https://gist.github.com/jacobbubu/1836273)


## Homework ##

Try changing the `NumberFormatter`'s `groupingSeparator`, `currencyGroupingSeparator`, and related properties to format both decimal style numbers and currency style numbers.



[Read the documentation for `NumberFormatter`](https://developer.apple.com/documentation/foundation/numberformatter) and experiment with changing how it formats your decimal numbers (i.e. try different grouping separators like: `"_"` or `"*"`).

## Download the Swift Playgrounds for NumberFormatter ##

I've got more examples that you can explore to play with the `NumberFormatter` Playgrounds file. 

Download the currency Playgrounds file and you can learn how to programmatically set the NSLocale to the German, French, and US English.

<script src="https://app.convertkit.com/landing_pages/5573.js"></script>