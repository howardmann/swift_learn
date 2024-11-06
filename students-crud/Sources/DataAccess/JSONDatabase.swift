import Foundation

let filePath = "/Users/howardmann/Howie/swift_learn/students-crud/Sources/db/students.json"

func loadStudents() -> [Student] {
    // Load JSON from filePath into an array of `Student`
    // Try to load data from JSON and convert to [Student] array
    guard let data = try? Data(contentsOf: URL(fileURLWithPath: filePath)),
          let students = try? JSONDecoder().decode([Student].self, from: data) else {
        // If loading or conversion fails return empty array using guard
        return []
    }
    return students
}

func saveStudents(students: [Student]) {
  // Save students array back to JSON file
  // Try to convert the [Student] array into JSON data using JSONEncoder
  guard let data = try? JSONEncoder().encode(students) else {
    // If encoding fails return early using guard
    return
  }
  // If encoding succeeds write date to JSOn file at filePath
  try? data.write(to: URL(fileURLWithPath: filePath))

}