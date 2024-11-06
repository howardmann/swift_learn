import Foundation

func listStudents() -> [Student] {
  // JSONDatabase.swift
  return loadStudents()
}

// Add a new student using a tuple
func addStudent(name: String, age: Int, year: Int, prefect: Bool) {
  var students = listStudents()
  let newStudent = Student(name: name, age: age, year: year, prefect: prefect)
  students.append(newStudent)
  // JSONDatabase.swift
  saveStudents(students: students)
}

// Find students by name

func findStudents(name: String) -> [Student] {
  let students = listStudents()
  // Filter students by name
  let matchingStudents = students.filter {$0.name == name}
  return matchingStudents
}

// Delete student

func removeStudent(name: String) -> [Student] {
  var students = listStudents()
  // filter out student with the specificed name
  students = students.filter {$0.name != name}
  // Save the updated list of students
  saveStudents(students: students)
  // Return the updated list
  return students
}

// Dump DB
func dumpDatabase(){
  // Write an empty array to teh students file to clear it
  saveStudents(students: [])
  print("Database has been dumped. All student records are cleared")
}