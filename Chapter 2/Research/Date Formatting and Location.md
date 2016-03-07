
Core Location Updates

http://stackoverflow.com/questions/24050633/implement-cllocationmanagerdelegate-methods-in-swift/24056771#24056771


Use NSLocationAlwaysUsageDescription for apps that want to use the device's location even when the app is not open and being used.

Use NSLocationWhenInUseUsageDescription for apps that want to use the device's location only when the app is open and in use.

Your app can use the location in the background or only when it is in the foreground, but you'll need to request permission from the user.

Note: You must set a key for the dialog to appear when you request location, otherwise nothing will happen.

## 1. Required Location Privacy Setting ##

On iOS 8+ you need to set one or both depending on your applications needs. To get started I would recommend just using the `NSLocationAlwaysUsageDescription`.

		NSLocationAlwaysUsageDescription
		NSLocationWhenInUseUsageDescription


1. Open Info.plist
2. Right-click and select `Add Row`
3. For Key (left side) add:

		NSLocationAlwaysUsageDescription
				
4. For Type set: 

		String

5. For Value set:

		Your location is required to fetch the weather automatically.
		
## 2. Location Updates ##



## 3. Date Formatting ##

1. Add an Outlet for the Date UILabel


2. Add the method to set the date:

		func updateDate() {
		    let date = NSDate()
		    let dateFormatter = NSDateFormatter()

			// Use date formatting codes: 
		    dateFormatter.dateFormat = "MMMM d" // i.e. November 7
		    dateLabel.text = dateFormatter.stringFromDate(date)
		}

3. Call the updateDate() method at the end of your viewDidLoad() method

		override func viewDidLoad() {
			super.viewDidLoad()
	    		// ...
		    	updateDate()
		}
Date styles
NSDateFormatter
http://www.unicode.org/reports/tr35/tr35-31/tr35-dates.html#Date_Field_Symbol_Table
http://www.codingexplorer.com/swiftly-getting-human-readable-date-nsdateformatter/


## JSON DATA ##

* Dark Sky: https://developer.forecast.io/docs/v2
* http://jsonviewer.stack.hu
* https://developer.apple.com/library/ios/documentation/Cocoa/Conceptual/URLLoadingSystem/NSURLSessionConcepts/NSURLSessionConcepts.html

## Auto Layout and Adaptive Displays ##

Really only for iPad/iPhone landscape. 

Can't distinguish between iPhone 6S+ and iPhone 6S
- Idea is to provide re-tooled UI for bigger screens in landscape, but not portrait

https://developer.apple.com/library/ios/documentation/UserExperience/Conceptual/MobileHIG/LayoutandAppearance.html