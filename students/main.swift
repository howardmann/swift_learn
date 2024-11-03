import Foundation

do {
    let students = try await listStudents()
    print("Student count: \(students.count)")
    for student in students {
        print("Name: \(student.name), Age: \(student.age)")
    }
} catch {
    print("Failed to retrieve students: \(error)")
}


// NOTE ON HOW TO EXECUTE
// Swift unlike JS does not support module imports, you must combine all files into a single executable in the correct order to run

// COPY THIS CODE BELOW IN CLI TO RUN ABOVE
// swiftc Student.swift ListStudents.swift main.swift -o students_executable && ./students_executable
