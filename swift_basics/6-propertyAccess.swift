// Common examples of how to access properties in a dictionry or object

// In Swift, accessing properties in a dictionary requires typecasting because dictionaries are often declared as [String: Any], meaning their values can be of any type. Swift is strongly typed, so we need to cast the values to the correct type before using them.

// To avoid crashes or invalid values, we use optional casting (as?) and provide fallback values using the ?? operator. Below are common examples of how to access different property types in a dictionary.

// let value = array[0]["key"] as? Type ?? "fallback"

let users = [
    ["firstName": "Alice", "age": 22, "legal": true],
    ["firstName": "Bob", "age": 16, "legal": false],
    ["firstName": "Charlie", "age": 32, "legal": true],
    ["firstName": "David", "age": 32, "legal": true, "hobbies": ["Reading", "Cooling"]]
]


// 1. String properties
let aliceName = users[0]["firstName"] as? String ?? "Unknown"
print("Alice's name: \(aliceName)")

// 2. Integer properties
let aliceAge = users[0]["age"] as? Int ?? 0
print("Alice's age: \(aliceAge)")

// 3. Boolean properties
let aliceLegal = users[0]["legal"] as? Bool ?? false
print("Alice's legal status: \(aliceLegal)")

// 4. Missing properties -- here lastName
let aliceSurname = users[0]["lastName"] as? String ?? "Unknown"
print("Alice's surname: \(aliceSurname)")

// 5. Arrays in properties
let davidHobbies = users[3]["hobbies"] as? [String] ?? []
print("David's hobbies: \(davidHobbies)")