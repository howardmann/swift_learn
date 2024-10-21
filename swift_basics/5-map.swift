// How to use map

// EXAMPLE 1 simple map ===================
let numbers = [1,2,3,4,5]

// Transform each number by x2
let doubledNumbers = numbers.map { number in
  return number * 2
}

print(doubledNumbers)

// JS approach
// const numbers = [1, 2, 3, 4, 5];

// // Transform each number by multiplying by 2
// const doubledNumbers = numbers.map(number => {
//     return number * 2;
// });

// console.log(doubledNumbers);  // Output: [2, 4, 6, 8, 10]

// EXAMPLE 2 shorthand ===================

// $0 refers to first argument passed
let doubledNumbersShort = numbers.map { $0 * 2 }
print(doubledNumbersShort)

// JS approach
// const doubledNumbersShort = numbers.map(number => number * 2)

// EXAMPLE 3 map over array of objects ===================

let users = [
    ["firstName": "Alice", "age": 22],
    ["firstName": "Bob", "age": 16],
    ["firstName": "Charlie", "age": 32]
]

// Map over users and add a new property legal as boolean
let updatedUsers = users.map { user in 
  var modifiedUser = user
  let age = user["age"] as? Int ?? 0 // access age integer property with fallback of 0
  modifiedUser["legal"] = age >= 18
  return modifiedUser
}

print(updatedUsers)



