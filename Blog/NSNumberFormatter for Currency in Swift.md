#How to Use NSNumberFormatter in Swift to Make Currency Numbers Easy to Read 


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


Read the documentation for `NSNumberFormatter` and experiment with changing how it formats your decimal numbers (i.e. try different grouping separators like: `"_"` or `"*"`).


Play with the `NSNumberFormatter` Playgrounds file. 

<a rel="ck_modal" href="#ck_modal">Download the currency Playgrounds file</a> and you can learn how to programmatically set the NSLocale to the German, French, and US English.

<script src="https://app.convertkit.com/landing_pages/5573.js"></script>