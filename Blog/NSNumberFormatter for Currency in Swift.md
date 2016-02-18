# How to Use NSNumberFormatter in Swift to Make Currency Numbers Easy to Read #

Typically, when you go to display a number in Swift (Float, Double, Int, etc.) it will display without grouping separators. By default a number like 4,592,028.0 will display like: `4592028.0`

If you need to display currency, you will want to show the currency symbol ($, €, ¥, £, etc.).

Displaying the correct currency symbol can get complex pretty quickly – thankfully, Apple has you covered and provides a solution with the `NSNumberFormatter` class. It can take care of displaying the correct symbol based on your user’s location in addition to any rules for decimal separators and grouping separators.

* In the USA: $3,490,000.89
* In France: 3 490 000,89 €
* In Germany: 3.490.000,89 €

You don't have to memorize these currency symbols, grouping separators, or decimal separators. Apple has done all the heavy lifting with `NSNumberFormatter`.

The following code sample will use the current locale of the user's device to format the currency:

	var currencyFormatter = NSNumberFormatter()
	currencyFormatter.usesGroupingSeparator = true
	currencyFormatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle 
	// localize to your grouping and decimal separator
	currencyFormatter.locale = NSLocale.currentLocale()
	var priceString = currencyFormatter.stringFromNumber(9999.99)
	print(priceString) // Displays $9,999.99 in the US locale

`NSNumberFormatter` can use the correct separators and currency symbols for your country by setting the `NSLocale` directly.

## Homework ##

Try changing the `NSNumberFormatter`'s `groupingSeparator`, `currencyGroupingSeparator`, and related properties to format both decimal style numbers and currency style numbers.

Read the documentation for `NSNumberFormatter` and experiment with changing how it formats your decimal numbers (i.e. try different grouping separators like: `"_"` or `"*"`).

## Download the Swift Playgrounds for NSNumberFormatter ##

Play with the `NSNumberFormatter` Playgrounds file. 

<a rel="ck_modal" href="#ck_modal">Download the currency Playgrounds file</a> and you can learn how to programmatically set the NSLocale to the German, French, and US English.

<script src="https://app.convertkit.com/landing_pages/5573.js"></script>