// Problem: copy a list of users and return with two new properties, full name and check if age is legal
// If name is not given default to Guest

// Original list of users (assuming this is the input we need to transform)
let sampleUsers = [
    ["firstName": "Alice", "lastName": "Johnson", "age": 22],
    ["firstName": "Bob", "age": 16],  // No last name provided
    ["firstName": "Charles", "lastName": "Smith", "age": 32]
]

// Define struct of users with additional info
struct UserWithExtra {
  let firstName: String
  let lastName: String? // last name optional
  let age: Int
  let legal: Bool // new properties
  let fullName: String // new properties
}

// Transform array 
let updatedUsersExtra = sampleUsers.map {user in
  let firstName = user["firstName"] as? String ?? "Guest"
  let lastName = user["lastName"] as? String ?? "Guest" // fallback guest
  let age = user["age"] as? Int ?? 0
  let legal = age >= 18
  let fullName = "\(firstName) \(lastName)"

  return UserWithExtra(
    firstName: firstName,
    lastName: lastName,
    age: age,
    legal: legal,
    fullName: fullName
  )
}

for user in updatedUsersExtra {
  print("firstName: \(user.firstName), lastName: \(user.lastName!), age: \(user.age), legal: \(user.legal), fullName: \(user.fullName)")
}