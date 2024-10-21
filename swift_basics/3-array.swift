// Array of objects

// Infer type based on dictionary. Like array objects in JS but with square brackets and strings need quotations
let users = [
  ["name": "Alice", "age": 22],
  ["name": "Bob", "age": 16],
  ["name": "Charlies", "age": 32]
]

print("users: \(users)")

// Use structs. Need type declaration. Like a model with validation handling
struct User {
  let name: String
  let age: Int
}

// Apply the struct to create a dictionary
let usersStruct: [User] = [
  User(name: "Alice", age: 22),
  User(name: "Bob", age: 16),
  User(name: "Charles", age: 32),
]

print("users with structs: \(users)")

// Use structs to adjust properties in dictionary. Here we create a new Boolean property legal
struct UserWithLegalStatus {
  let name: String
  let age: Int
  let legal: Bool
}

// Map over array to return boolean if user is overage
let updatedUsers = usersStruct.map { user in
  UserWithLegalStatus(name: user.name, age: user.age, legal: user.age >= 18)
}

print("updatedUsers: \(updatedUsers)")

// Use computed properties to encapsulate logic in struct. Note: that the property is not visible when printing the object but is accessible
struct UserLegalComputed {
  let name: String
  let age: Int

  var isLegal: Bool {
    return age >= 18
  }
}

let computedUsers = usersStruct.map {user in
  UserLegalComputed(name: user.name, age: user.age)
}

for user in computedUsers {
  print("name: \(user.name), age: \(user.age), legal: \(user.isLegal)")
}

