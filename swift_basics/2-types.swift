// Types fundamentals

// Note: most of the time you wont have to explictly declare variables, you will typically only have to do this in functions and structs

// Swift uses type inference so you dont have to be explicit with types
let fullName = "Naruto Uzumaki"
print(fullName)

// Throw error if assigning different type
// fullName = 42
// // Throw error if assigning different type fullName = 42 \ - error: cannot assign value of type 'Int' to type 'String'

// String - text
let explicitString: String = "This is a string"
print("String: \(explicitString)")

// Int - whole number
let explicitInteger: Int = 42
print("Int: \(explicitInteger)")

// Double - floating point numbers
let explicitNumber: Double = 42.42424242
print("Double: \(explicitNumber)")

// Bool - boolean
let explicitBool: Bool = true
print("Boolean: \(explicitBool)")

// [String] - Array
let explicitArr: [String] = ["one-tail", "two-tail", "three-tail", "four-tail"]
print("Array: \(explicitArr)")

// Optional fallback
let optionalName: String? = nil
let defaultName = "Guest"
let name = optionalName ?? defaultName
print("Hello, \(name)")