// Types fundamentals

// Swift uses type inference so you dont have to be explicit with types
var fullName = "Naruto Uzumaki"
print(fullName)

// Throw error if assigning different type
// fullName = 42
// // Throw error if assigning different type fullName = 42 \ - error: cannot assign value of type 'Int' to type 'String'

// String - text
var explicitString: String = "This is a string"
print("String: \(explicitString)")

// Int - whole number
var explicitInteger: Int = 42
print("Int: \(explicitInteger)")

// Double - floating point numbers
var explicitNumber: Double = 42.42424242
print("Double: \(explicitNumber)")

// Bool - boolean
var explicitBool: Bool = true
print("Boolean: \(explicitBool)")

// [String] - Array
var explicitArr: [String] = ["one-tail", "two-tail", "three-tail", "four-tail"]
print("Array: \(explicitArr)")
