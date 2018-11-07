# EasyUserDefaults
It's just a middleware for UserDefaults to write and read values by easy way

in default way to save the user name, we write this 
```Swift
let userDefaults = UserDefaults.standard

// writing the value
userDefaults.set("Guest", forKey: "UserNameKey")

// reading the value
userDefaults.value(forKey: "UserNameKey") as? String
````

but using the subscripts, you can create the key and use it for write or read the value
````Swift
	let userDefaults = UserDefaults.standard
	let userNameKey = UserDefaults.Key<String>("userNameKey", default: "Guest")
	
	// reading the value 
	let defaultValue = userDefaults[.userNameKey]
	let newValue = "Jack"

	// writing the value
	userDefaults[.userNameKey] = newValue

````
