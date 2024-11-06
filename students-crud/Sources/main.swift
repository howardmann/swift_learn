import Foundation

// List all students
print("listStudents():")
let students = listStudents()
print(students)

// Add student
addStudent(name: "Howie", age: 15, year: 10, prefect: false )

// Check new students
let newStudents = listStudents()
print(newStudents)


// Fund student by name
let foundStudents = findStudents(name: "Howie")
print(foundStudents)

// Delete student by name
let postDeleteStudents = removeStudent(name: "Howie")
print(postDeleteStudents)

// Should be no more howie's :(
print(findStudents(name: "Howie"))

// Dump DB
dumpDatabase()

// Reseed
addStudent(name: "Howie", age: 15, year: 10, prefect: false )
addStudent(name: "Felix", age: 8, year: 3, prefect: true )
addStudent(name: "Hela", age: 12, year: 7, prefect: true )

// List new students
print(listStudents())