// Array of objects

// Infer type based on dictionary
let users = [
  ["name": "Alice", "age": 22],
  ["name": "Bob", "age": 16],
  ["name": "Charlies", "age": 32]
]

print("users: \(users)")

// Use structs
struct User {
  let name: String
  let age: Int
}

let usersStruct: [User] = [
  User(name: "Alice", age: 22),
  User(name: "Bob", age: 16),
  User(name: "Charles", age: 32),
]

print("users with structs: \(users)")

// Use structs and computed values
struct UserWithLegalStatus {
  let name: String
  let age: Int
  let legal: Bool
}

// Map over araray
let updatedUsers = usersStruct.map { user in
  UserWithLegalStatus(name: user.name, age: user.age, legal: user.age >= 18)
}

print("updatedUsers: \(updatedUsers)")

// Use computed values
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

