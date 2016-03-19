Lesson 1.0 - Chapter 3 Super Easy App Data



## 1.1. Lecture - iPhone App Data Basics ##

You will learn more about how data can be used inside your apps in this lesson. Data can come from distant servers, local databases inside your app, or from user input.

## 1.2 Tutorial - Swift Dictionary ##

The `Dictionary` type is a collection class that provides storage for related data using key and value pairs. Much like an English dictionary, each word in the dictionary is associated with a meaning, synonyms, and supportive text on using the word.

```swift
// Dictionary (key:value)

let place = [
    "city" : "Rochester",
    "state" : "NY",
    "population" : 210000]

place["city"]
place["state"]
place["population"]
place["best food"] // nil
```

### Links ###

* [Collection Types - Dictionary](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html) 

## 1.3 Tutorial - Swift Array ##

The Swift `Array` collection allows you to store multiple objects or values. It is a building block combined with the Dictionary type for storing multiple pieces of information.

```swift
let favoriteFood = ["pizza", "thai", "tacos"]

favoriteFood.first
favoriteFood.last

favoriteFood[0]
favoriteFood[1]
favoriteFood[2]
```

### Links ###

* [Collection Types - Array](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html) 


## 1.4 Tutorial - JSON and Web Services ##

1. JSON stands for Javascript Object Notation
2. JSON is common web data format with server APIs. 
	1. The top 5 paid apps: 
	2. <https://itunes.apple.com/us/rss/toppaidapplications/limit=5/json>
3. JSON viewer
	1. <http://jsonviewer.stack.hu>

## 1.5 Tutorial - Loading JSON Files and Error Handling ##

Given a `sample.json` file you can load the data into your iPhone app or a Playground.

```swift
do {
	// Simple json file loading
	let fileURL = NSBundle.mainBundle().URLForResource("sample", withExtension: "json")
	let jsonData = NSData(contentsOfURL: fileURL!)
	let json = try NSJSONSerialization.JSONObjectWithData(jsonData!, options: [])
	
	print(json) // display the data AnyObject (NSDictionary or NSArray)
	    
} catch let error as NSError {
    print("Error loading JSON data:", error.localizedDescription)
}
```

### Links ###

* [NSJSONSerialization - apple.com](https://developer.apple.com/library/ios/documentation/Foundation/Reference/NSJSONSerialization_Class/)

## 1.6 Parsing JSON Data With Swift ##

As you work with web data, you will have to write code that is more robust that can handle situations when data is missing. Optional types allow you to capture information when it exists as well as when it doesn't.

```swift
    // convert to dictionary
    
    if let personData = json as? [String : AnyObject] {
        
        personData["FirstName"]
        personData["lastName"] // nil ... case sensitive
        personData["LastName"]
        personData["FavoriteFoods"] // array
        
        if let firstName = personData["FirstName"] as? String {
            print("Your first name is", firstName)
        }
        
    } else {
        print("Invalid Swift dictionary", json)
    }
```


1.1 Lecture - Web Services and App Data
1.2 Tutorial - Connect UI Outlets
1.3 Tutorial - Web APIs and JSON Data
1.4 Tutorial - Parsing JSON Data



DarkSky Weather REST API 
	Intro
	Format URL
	APIKey
	Lat/Lon
	Get your latitude and longitude: http://www.latlong.net

Request Weather using NSURLSession
Parse Weather JSON response
Create a WeatherDataPoint Structure
Update the UI with the Weather Data
